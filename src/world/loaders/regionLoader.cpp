#include "regionLoader.h"
#include "worldLoader.h"

uint offset;
uint sector;

// Get Compression Scheme String
std::string RegionLoader::compressionSchemeString(uint cs) {
	switch (cs) {
	case 1:
		return "GZip";
	case 2:
		return "Zlib";
	case 3:
		return "Uncompressed";
	case 4:
		return "LZ4";
	case 127:
		return "Custom";
	}
	return "Unsupported";
}

uint8_t* RegionLoader::decompressChunk(size_t length, uint8_t compressionScheme, size_t* nbtLength) {
	// Read Compressed Data from Region File
	char* compressedData = new char[length];
	f.read(reinterpret_cast<char*>(compressedData), length);
	// Issue was caused by too small decompressed size guess
	size_t decompressedSize = 1000000;
	
	// Prepare array for Decompressed Data
    uint8_t* decompressedData = (uint8_t*)malloc(decompressedSize);
    if (!decompressedData) {
        fprintf(stderr, "Failed to allocate decompressed buffer\n");
        return NULL;
    }

	// Create Decompressor
	struct libdeflate_decompressor *libd;
	libd = libdeflate_alloc_decompressor();
	if (libd == NULL) {
		std::cerr << "Could not allocate decompressor!" << std::endl;
		return NULL;
	}
	// Decompress Data
	int result;
	switch (compressionScheme) {
		//case 1: // TODO: GZip
			// Decompress Data
		//	break;
		case 2: // ZLib
			result = libdeflate_zlib_decompress(libd, compressedData, length, decompressedData, 100000 , &decompressedSize);
			// Decompress Data
			if (result) {
				std::cerr << "LibDeflate Error #" << std::to_string(result) << std::endl;
				return NULL;
			}
			//std::cout << "Deflated Successfully!" << std::endl;
			break;
		default:
			std::cerr << "Unknown or Unimplemented compression scheme #" << std::to_string(compressionScheme) <<"!" << std::endl;
			return NULL;
	}
	// Deallocate Decompressor
	delete [] compressedData;
	libdeflate_free_decompressor(libd);

	// Return NBT Data
	*nbtLength = decompressedSize;
	return decompressedData;
}

// Returns an array of Chunks
Chunk* RegionLoader::getChunk(int chunkX, int chunkZ) {
	//for (uint chunkIndex = 0; chunkIndex < 32*32; chunkIndex++) {
	uint chunkIndex = (chunkX&31) + (chunkZ&31)*32;
	f.seekg(chunkIndex*4,std::ios::beg);
	// Determine Chunk Position and Size
	offset = intReadFile(f,3)*4096;
	sector = intReadFile(f,1)*4096;
	if (!(offset | sector)) {
		// No Chunk Present
		if (regionLoaderDebug) {
			std::cerr << "Chunk #" << chunkIndex << " does not exist" << std::endl;
		}
		return nullptr;
	}
	f.seekg(offset, std::ios::beg);
	// Determine Chunk metadata
	size_t length = intReadFile(f,4)-1;
	uint8_t compressionScheme = intReadFile(f,1);
	if (regionLoaderDebug) {
		std::cout << "Chunk #" << std::to_string(chunkIndex) << ": " << offset << ", " << sector << "KiB" << std::endl;
		std::cout << "\t" << length << " Bytes\n\tCompression " << compressionSchemeString(compressionScheme) << std::endl;
	}

	// Load compressed data
	size_t nbtLength;
	uint8_t* nbtData = decompressChunk(length, compressionScheme, &nbtLength);
	if (!nbtData) {
		return nullptr;
	}
	return extractNbtChunk(chunkX, chunkZ, nbtData, nbtLength);
}

// Get the Region data from the associated regionX and regionZ file
Chunk* RegionLoader::loadChunk(int chunkX, int chunkZ, bool nether) {
    int regionX = (int) std::floor(chunkX / 32.0f);
    int regionZ = (int) std::floor(chunkZ / 32.0f);

	// std::string regionfile = path + "DIM-1/region/r." + std::to_string(regionX) + "." + std::to_string(regionZ) + ".mcr";
	std::string regionFolder = "region/r.";
	if (nether) {
		regionFolder = "DIM-1/" + regionFolder;
	}
	std::string regionfile = path + regionFolder + std::to_string(regionX) + "." + std::to_string(regionZ) + ".mcr";
	if (lastAccessedRegion != regionfile) {
		// If f is already used, close it
		if (f.is_open()) {
			f.close();
		}

		f.open(regionfile, std::ios::binary);
		if (!f.is_open()) {
			std::cerr << "Region File " << regionfile << " not found!" << std::endl;
			return nullptr;
		}
		lastAccessedRegion = regionfile;
	}
	//std::cout << "Decoding " << regionfile << std::endl;
	return getChunk(chunkX,chunkZ);
}