#pragma once
#include "worldLoader.h"

class IndevLoader : public WorldLoader {
    public:
        IndevLoader(std::string pPath);
        Chunk* loadChunk(int x, int z, bool nether = false) override;
    private:
        short levelWidth, levelLength, levelHeight;
        Block* levelBlocks;
};