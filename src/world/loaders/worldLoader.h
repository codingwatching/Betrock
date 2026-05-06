// Generic world loader
#pragma once
#include "../global.h"
#define NBT_IMPLEMENTATION
#include "nbt.h"
#include "../helper.h"
#include <cstddef>
#include <fstream>
#include "../include/decompress.hpp"
#include <libdeflate.h>
#include "../chunk.h"
#include "../compat.h"
#include "../debug.h"

class WorldLoader {
    public:
        WorldLoader(std::string pPath);
        virtual Chunk* loadChunk(int x, int z, bool nether = false) { return nullptr; };
    private:
        std::string compressionSchemeString(uint cs);
    protected:
        int lastX, lastZ;
        std::ifstream f;
        std::string lastAccessedRegion = "";
        std::string path = "";
        Chunk* extractNbtChunk(int chunkX, int chunkZ, uint8_t* nbtData, size_t nbtLength);
        uint8_t* decompressChunk(size_t length, uint8_t compressionScheme, size_t* nbtLength);
};