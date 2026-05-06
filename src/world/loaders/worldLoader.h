// Generic world loader
#pragma once
#include "../global.h"
#include "../nbt/nbt.h"
#include "../helper.h"
#include <fstream>
#include "../include/decompress.hpp"
#include <libdeflate.h>
#include "../chunk.h"
#include "../compat.h"
#include "../debug.h"

class WorldLoader {
    public:
        WorldLoader(std::string pPath);
        Chunk* loadChunk(int x, int z, bool nether = false);
    private:
        int lastX, lastZ;
        std::ifstream f;
        std::string lastAccessedRegion = "";
        std::string compressionSchemeString(uint cs);
        uint8_t* decompressChunk(uint chunkIndex, size_t length, uint8_t compressionScheme, size_t* nbtLength);
        Chunk* getChunk(int x, int z);
    protected:
	    nbt nbtLoader;
        TAG_Compound* chunkLevel = nullptr;
        std::string path = "";
};