#pragma once
#include "chunk.h"
#include "loaders/regionLoader.h"
#include "region.h"
#include "../compat.h"

class Region {
    public:
        int x,z;
        std::vector<Chunk> chunks;
        Region(std::vector<Chunk> chunks, int x, int z);
        Chunk* getChunk(int x, int z);
};