#pragma once
#include "worldLoader.h"
#include <math.h>

class RegionLoader : public WorldLoader {
    public:
        RegionLoader(std::string pPath) : WorldLoader(pPath) {}
        Chunk* loadChunk(int x, int z, bool nether = false) override;
    private:
        std::string compressionSchemeString(uint cs);
        Chunk* getChunk(int x, int z);
};