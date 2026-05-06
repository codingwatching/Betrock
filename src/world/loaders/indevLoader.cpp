#include "indevLoader.h"

#include "nbt.h"
#include <cstdlib>

IndevLoader::IndevLoader(std::string pPath) : WorldLoader(pPath) {
    std::cout << "Loading Indev world at " << path + ".mclevel" << "\n";
    std::ifstream f(path + ".mclevel", std::ios::binary);
    if (!f.is_open()) return;
    
    auto baseRoot = std::dynamic_pointer_cast<CompoundNbtTag>(NbtRead(f, NBT_GZIP, 200));
    if (!baseRoot) return;
    auto root = std::dynamic_pointer_cast<CompoundNbtTag>(baseRoot->Get("MinecraftLevel"));
	//}
	if (!root) {
		std::cerr << "The entry is not of type TAG_Compound!" << std::endl;
		//continue;
		return;
	}
    auto mapTag = std::dynamic_pointer_cast<CompoundNbtTag>(baseRoot->Get("Map"));

    short width = std::dynamic_pointer_cast<ShortNbtTag>(baseRoot->Get("Width"))->GetData();
    short length = std::dynamic_pointer_cast<ShortNbtTag>(baseRoot->Get("Length"))->GetData();
    short height = std::dynamic_pointer_cast<ShortNbtTag>(baseRoot->Get("Height"))->GetData();
    
    if (levelBlocks) {
        free(levelBlocks);
    }
    levelBlocks = (Block*)malloc(sizeof(Block) * width * length * height);

	// Get Block Data
    auto blocks = std::dynamic_pointer_cast<ByteArrayNbtTag>(mapTag->Get("Blocks"));
    // Get Block ID
    if (!blocks) {
		std::cerr << "No block data found!" << std::endl;
        return;
    }
    const auto& blockVec = blocks->GetData();
    
    // Get Block Sky Light
    auto data = std::dynamic_pointer_cast<ByteArrayNbtTag>(mapTag->Get("Data"));
    if (!data) {
		std::cerr << "No data found!" << std::endl;
        return;
    }
    const auto& dataVec = blocks->GetData();

    for (short x = 0; x < width; x++) {
        for (short z = 0; x < length; z++) {
            for (short y = 0; y < length; y++) {
                Block* b = &levelBlocks[y + (z * height) + (x * height * length)];
                b->blockType = blockVec[y + (z * height) + (x * height * length)];
                b->metaData = (dataVec[y + (z * height) + (x * height * length)] >> 4) & 0xF;
                b->skyLightLevel = (dataVec[y + (z * height) + (x * height * length)] & 0xF);
                b->lightLevel = 0;
            }
        }
    }
}
Chunk* IndevLoader::loadChunk(int x, int z, bool nether) {
    uint8_t* blockData = new uint8_t[16*128*16];
    uint8_t* blockMeta = new uint8_t[16*128*16];
    uint8_t* skyLight = new uint8_t[16*128*16];
    // return segments of cached world as indev chunks
    return new Chunk(x,z, blockData, skyLight, skyLight, blockMeta);
}