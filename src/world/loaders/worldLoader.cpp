#include "worldLoader.h"
WorldLoader::WorldLoader(std::string pPath) {
	WorldLoader::path = pPath;
}



Chunk* WorldLoader::extractNbtChunk(int chunkX, int chunkZ, uint8_t* nbtData, size_t nbtLength) {
    std::string s(reinterpret_cast<char*>(nbtData), nbtLength);
    std::istringstream stream(s);
	// Extract Block Data
	//if (lastX != chunkX && lastZ != chunkZ) {
    auto readRoot = NbtRead(stream);
	//}
	free(nbtData);
	if (!readRoot) {
		std::cerr << "The entry is not of type TAG_Compound!" << std::endl;
		//continue;
		return nullptr;
	}
    std::cout << *readRoot;

    /*
	// Get Block Data
	int8_t* blockData;
	int8_t* blockSkyLightData;
	int8_t* blockLightData;
	int8_t* blockMetaData;
	bool foundBlockData = false;
	bool foundSkyLightData = false;
	bool foundLightData = false;
	bool foundMetaData = false;
	for (uint i = 0; i < chunkLevel->getSizeOfData(); i++) {
		// Get Block ID
		if (chunkLevel->getData(i)->getName() == "Blocks") {
			auto* blockArray = dynamic_cast<TAG_Byte_Array*>( chunkLevel->getData(i) );
			blockData = blockArray->getData();
			foundBlockData = true;
		}
		// Get Block Sky Light
		if (chunkLevel->getData(i)->getName() == "SkyLight") {
			auto* blockSkyLightArray = dynamic_cast<TAG_Byte_Array*>( chunkLevel->getData(i) );
			blockSkyLightData = blockSkyLightArray->getData();
			foundSkyLightData = true;		
		}
		// Get Block Light
		if (chunkLevel->getData(i)->getName() == "BlockLight") {
			auto* blockLightArray = dynamic_cast<TAG_Byte_Array*>( chunkLevel->getData(i) );
			blockLightData = blockLightArray->getData();
			foundLightData = true;		
		}
		// Get Block Metadata
		if (chunkLevel->getData(i)->getName() == "Data") {
			auto* blockMetaDataArray = dynamic_cast<TAG_Byte_Array*>( chunkLevel->getData(i) );
			blockMetaData = blockMetaDataArray->getData();
			foundMetaData = true;
		}
		// If all has been found, gtfo
		if (foundBlockData && foundSkyLightData && foundLightData && foundMetaData) {
			break;
		}
	}
	if (!blockData) {
		std::cerr << "No block data found!" << std::endl;
		return nullptr;
	}
	if (!blockSkyLightData) {
		std::cerr << "No sky light data found!" << std::endl;
		return nullptr;
	}
	if (!blockLightData) {
		std::cerr << "No block light data found!" << std::endl;
		return nullptr;
	}
	if (!blockMetaData) {
		std::cerr << "No block metadata found!" << std::endl;
		return nullptr;
	}
	return new Chunk(chunkX,chunkZ,blockData,blockSkyLightData,blockLightData,blockMetaData);
        */
    return nullptr;
}