#include "indevLoader.h"

#include "nbt.h"
#include <cstddef>
#include <cstdlib>

IndevLoader::IndevLoader(std::string pPath) : WorldLoader(pPath) {
    std::cout << "Loading Indev world \"" << path + ".mclevel" << "\"...\n";
    std::ifstream f(path + ".mclevel", std::ios::binary);
    if (!f.is_open()) return;
    
    auto baseRoot = std::dynamic_pointer_cast<CompoundNbtTag>(NbtRead(f, NBT_GZIP, 200));
    if (!baseRoot) {
        std::cerr << "Failed to load NBT Tag\n";
        return;
    }
    auto mapTag = std::dynamic_pointer_cast<CompoundNbtTag>(baseRoot->Get("Map"));
    if (!mapTag) {
        std::cerr << "Failed to read \"Map\" Tag\n";
        return;
    } else {
        auto wTag = mapTag->Get("Width");
        if (!wTag) std::cerr << "No width tag!\n";
        levelWidth = std::dynamic_pointer_cast<ShortNbtTag>(wTag)->GetData();
        auto lTag = mapTag->Get("Length");
        if (!lTag) std::cerr << "No length tag!\n";
        levelLength = std::dynamic_pointer_cast<ShortNbtTag>(lTag)->GetData();
        auto hTag = mapTag->Get("Height");
        if (!hTag) std::cerr << "No height tag!\n";
        levelHeight = std::dynamic_pointer_cast<ShortNbtTag>(hTag)->GetData();
    }
    
    if (levelBlocks) {
        delete[] levelBlocks;
        levelBlocks = nullptr;
    }
    levelBlocks = new Block[levelWidth * levelLength * levelHeight];
    size_t expectedSize = levelWidth * levelLength * levelHeight;

    std::cout << "Reading Indev block data...\n";
	// Get Block Data
    auto blocks = std::dynamic_pointer_cast<ByteArrayNbtTag>(mapTag->Get("Blocks"));
    // Get Block ID
    if (!blocks) {
		std::cerr << "No block data found!" << std::endl;
        return;
    }
    const auto& blockVec = blocks->GetData();
    if (blockVec.size() < expectedSize) {
        std::cerr << "Block array too small! (" << blockVec.size() << "/" << expectedSize << ")\n";
        return;
    }
    
    std::cout << "Reading Indev meta + lighting data...\n";
    // Get Block Sky Light
    auto data = std::dynamic_pointer_cast<ByteArrayNbtTag>(mapTag->Get("Data"));
    if (!data) {
		std::cerr << "No data found!" << std::endl;
        return;
    }
    const auto& dataVec = data->GetData();
    if (dataVec.size() < expectedSize) {
        std::cerr << "Data array too small! (" << dataVec.size() << "/" << expectedSize << ")\n";
        return;
    }

    std::cout << std::hex;
    for (short x = 0; x < levelWidth; x++) {
        for (short z = 0; z < levelLength; z++) {
            for (short y = 0; y < levelHeight; y++) {
                size_t index = x + (z * levelWidth) + (y * levelWidth * levelLength);
                Block* b = &levelBlocks[index];
                b->blockType = blockVec[index];
                uint8_t d = dataVec[index];
                b->metaData      = (d >> 4) & 0x0F;
                b->skyLightLevel = d & 0x0F;
            }
        }
    }
    std::cout << std::dec;
    std::cout << "Loaded Indev world \"" << path + ".mclevel" << "\"\n";
}

Chunk* IndevLoader::loadChunk(int cx, int cz, bool nether) {
    uint8_t* blockData = new uint8_t[CHUNK_VOLUME];
    memset(blockData, 0, CHUNK_VOLUME);
    uint8_t* blockMeta = new uint8_t[CHUNK_VOLUME];
    memset(blockMeta, 0, CHUNK_VOLUME);
    uint8_t* skyLight  = new uint8_t[CHUNK_VOLUME];
    memset(skyLight, 0, CHUNK_VOLUME);

    if (cx < 0 || cz < 0) return nullptr;

    for (int lx = 0; lx < CHUNK_WIDTH; lx++) {
        for (int lz = 0; lz < CHUNK_WIDTH; lz++) {
            int worldX = cx * CHUNK_WIDTH + lx;
            int worldZ = cz * CHUNK_WIDTH + lz;

            // Skip if outside indev world
            if (worldX < 0 || worldX >= levelWidth ||
                worldZ < 0 || worldZ >= levelLength) {
                continue;
            }

            for (int y = 0; y < CHUNK_HEIGHT; y++) {
                if (y >= levelHeight) continue;

                // Indev index
                int indevIndex = worldX +
                    (worldZ * levelWidth) +
                    (y * levelWidth * levelLength);

                // Chunk index (Y fastest as well)
                int chunkIndex = y +
                    (lz * CHUNK_HEIGHT) +
                    (lx * CHUNK_HEIGHT * CHUNK_WIDTH);

                Block& src = levelBlocks[indevIndex];

                blockData[chunkIndex] = src.blockType;
                blockMeta[chunkIndex] = src.metaData;
                skyLight[chunkIndex]  = src.skyLightLevel;
            }
        }
    }

    int nibbleSize = CHUNK_VOLUME / 2;
    uint8_t* skyLightPacked  = new uint8_t[nibbleSize]();
    uint8_t* metaPacked      = new uint8_t[nibbleSize]();

    for (int i = 0; i < CHUNK_VOLUME; i++) {
        int byte = i / 2;
        if (i % 2) {
            skyLightPacked[byte]  |= (skyLight[i]  & 0xF) << 4;
            metaPacked[byte]      |= (blockMeta[i] & 0xF) << 4;
        } else {
            skyLightPacked[byte]  |= (skyLight[i]  & 0xF);
            metaPacked[byte]      |= (blockMeta[i] & 0xF);
        }
    }

    delete[] skyLight;
    delete[] blockMeta;
    uint8_t* blockLight = new uint8_t[(CHUNK_VOLUME)/2];
    memset(blockLight, 0, (CHUNK_VOLUME)/2);

    return new Chunk(cx, cz, blockData, skyLightPacked, blockLight, metaPacked);
}