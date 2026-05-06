#include "worldLoader.h"
#include "nbt.h"
#include <cstddef>
WorldLoader::WorldLoader(std::string pPath) {
	WorldLoader::path = pPath;
}



Chunk* WorldLoader::extractNbtChunk(int chunkX, int chunkZ, uint8_t* nbtData, size_t nbtLength) {
    std::string s(reinterpret_cast<char*>(nbtData), nbtLength);
    std::istringstream stream(s);
	// Extract Block Data
	//if (lastX != chunkX && lastZ != chunkZ) {
    auto baseRoot = std::dynamic_pointer_cast<CompoundNbtTag>(NbtRead(stream, NBT_UNCOMPRESSED));
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
	free(nbtData);
	return new Chunk(chunkX,chunkZ,blockData,blockSkyLightData,blockLightData,blockMetaData);
}