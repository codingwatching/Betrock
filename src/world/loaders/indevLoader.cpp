#include "indevLoader.h"

#include "nbt.h"
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
    }
    levelWidth = std::dynamic_pointer_cast<ShortNbtTag>(mapTag->Get("Width"))->GetData();
    levelLength = std::dynamic_pointer_cast<ShortNbtTag>(mapTag->Get("Length"))->GetData();
    levelHeight = std::dynamic_pointer_cast<ShortNbtTag>(mapTag->Get("Height"))->GetData();
    
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

    for (short y = 0; y < levelHeight; y++) {
        for (short z = 0; z < levelLength; z++) {
            for (short x = 0; x < levelWidth; x++) {
                size_t index = x + (z * levelWidth) + (y * levelWidth * levelLength);
                Block* b = &levelBlocks[index];
                b->blockType = blockVec[index];
                b->metaData = (dataVec[index] >> 4) & 0xF;
                b->skyLightLevel = (dataVec[index] & 0xF);
                b->lightLevel = 0;
            }
        }
    }
    std::cout << "Loaded Indev world \"" << path + ".mclevel" << "\"\n";
}

Chunk* IndevLoader::loadChunk(int cx, int cz, bool nether) {
    const int CHUNK_W = 16;
    const int CHUNK_H = 128;
    const int CHUNK_D = 16;

    uint8_t* blockData = new uint8_t[CHUNK_W * CHUNK_H * CHUNK_D];
    uint8_t* blockMeta = new uint8_t[CHUNK_W * CHUNK_H * CHUNK_D];
    uint8_t* skyLight  = new uint8_t[CHUNK_W * CHUNK_H * CHUNK_D];

    for (int lx = 0; lx < 16; lx++) {
        for (int lz = 0; lz < 16; lz++) {
            int worldX = cx * 16 + lx;
            int worldZ = cz * 16 + lz;

            // Skip if outside indev world
            if (worldX < 0 || worldX >= levelWidth ||
                worldZ < 0 || worldZ >= levelLength) {
                continue;
            }

            for (int y = 0; y < CHUNK_H; y++) {
                if (y >= levelHeight) continue;

                // Indev index
                int indevIndex = worldX +
                    (worldZ * levelWidth) +
                    (y * levelWidth * levelLength);

                // Chunk index (Y fastest as well)
                int chunkIndex = y +
                    (lz * CHUNK_H) +
                    (lx * CHUNK_H * CHUNK_D);

                Block& src = levelBlocks[indevIndex];

                blockData[chunkIndex] = src.blockType;
                blockMeta[chunkIndex] = src.metaData;
                skyLight[chunkIndex]  = src.skyLightLevel;
            }
        }
    }
    uint8_t* blockLight = new uint8_t[CHUNK_W * CHUNK_H * CHUNK_D];
    memset(blockLight, 0, CHUNK_W * CHUNK_H * CHUNK_D);

    return new Chunk(cx, cz, blockData, skyLight, blockLight, blockMeta);
}