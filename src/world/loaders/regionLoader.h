#pragma once
#include "worldLoader.h"

class RegionLoader : public WorldLoader {
    public:
        RegionLoader(std::string pPath) : WorldLoader(pPath) {}
        Chunk* loadChunk(int x, int z, bool nether = false);
    private:
        int lastX, lastZ;
        std::ifstream f;
        std::string lastAccessedRegion = "";
        std::string compressionSchemeString(uint cs);
        uint8_t* decompressChunk(uint chunkIndex, size_t length, uint8_t compressionScheme, size_t* nbtLength);
        Chunk* getChunk(int x, int z);
};