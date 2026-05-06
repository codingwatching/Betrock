#include "alphaLoader.h"
#include "nbt.h"

Chunk* AlphaLoader::loadChunk(int x, int z, bool nether) {
    std::string dimFolder = nether ? "DIM-1/" : "";
    
    // Correct modulo for negative numbers
    int fx = ((x % 64) + 64) % 64;
    int fz = ((z % 64) + 64) % 64;

    std::string chunkFile = path + dimFolder
        + encodeBase36(fx) + "/"
        + encodeBase36(fz) + "/"
        + "c." + encodeBase36(x) + "." + encodeBase36(z) + ".dat";

    std::ifstream f(chunkFile, std::ios::binary);
    if (!f.is_open()) return nullptr;
    
    auto baseRoot = std::dynamic_pointer_cast<CompoundNbtTag>(NbtRead(f, NBT_GZIP, 200));
    if (!baseRoot) return nullptr;
    auto root = std::dynamic_pointer_cast<CompoundNbtTag>(baseRoot->Get("Level"));
	//}
	if (!root) {
		std::cerr << "The entry is not of type TAG_Compound!" << std::endl;
		//continue;
		return nullptr;
	}

	// Get Block Data
	uint8_t* blockData;
	uint8_t* blockSkyLightData;
	uint8_t* blockLightData;
	uint8_t* blockMetaData;
    auto blocks = std::dynamic_pointer_cast<ByteArrayNbtTag>(root->Get("Blocks"));
    // Get Block ID
    if (!blocks) {
		std::cerr << "No block data found!" << std::endl;
        return nullptr;
    }
    const auto& blockVec = blocks->GetData();
    blockData = new uint8_t[blockVec.size()];
    memcpy(blockData, blockVec.data(), blockVec.size());
    // Get Block Sky Light
    auto skyLight = std::dynamic_pointer_cast<ByteArrayNbtTag>(root->Get("SkyLight"));
    if (!skyLight) {
		std::cerr << "No sky light data found!" << std::endl;
        return nullptr;
    }
    const auto& skyVec = skyLight->GetData();
    blockSkyLightData = new uint8_t[skyVec.size()];
    memcpy(blockSkyLightData, skyVec.data(), skyVec.size());
    // Get Block Light
    auto blockLight = std::dynamic_pointer_cast<ByteArrayNbtTag>(root->Get("BlockLight"));
    if (!blockLight) {
		std::cerr << "No block light data found!" << std::endl;
        return nullptr;
    }
    const auto& lightVec = blockLight->GetData();
    blockLightData = new uint8_t[lightVec.size()];
    memcpy(blockLightData, lightVec.data(), lightVec.size());
    // Get Block Metadata
    auto meta = std::dynamic_pointer_cast<ByteArrayNbtTag>(root->Get("Data"));
    if (!meta) {
		std::cerr << "No block metadata found!" << std::endl;
        return nullptr;
    }
    const auto& metaVec = meta->GetData();
    blockMetaData = new uint8_t[metaVec.size()];
    memcpy(blockMetaData, metaVec.data(), metaVec.size());
    // If all has been found, gtfo
	return new Chunk(x,z,blockData,blockSkyLightData,blockLightData,blockMetaData);
}