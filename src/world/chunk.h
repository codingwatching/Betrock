#pragma once
#include "../debug.h"
#include "block.h"
#include "../compat.h"

#define CHUNK_HEIGHT 128
#define CHUNK_WIDTH 16
#define CHUNK_VOLUME CHUNK_WIDTH*CHUNK_HEIGHT*CHUNK_WIDTH

class Chunk {
    Block blocks [CHUNK_VOLUME];
    public:
        int x,z;
        Chunk(int pX, int pZ, uint8_t pBlockData [], uint8_t pSkyLightData[], uint8_t pBlockLightData [], uint8_t pMetaData []) {
            x = pX;
            z = pZ;
            for (uint i = 0; i < CHUNK_VOLUME; i++) {
                uint8_t blockLight = pBlockLightData[i/2];
                uint8_t skyLight = pSkyLightData[i/2];
                uint8_t metaData = pMetaData[i/2];
                if (i%2) {
                    blockLight = blockLight >> 4;
                    skyLight = skyLight >> 4;
                    metaData = metaData >> 4;
                } else {
                    blockLight = blockLight & 0xF;
                    skyLight = skyLight & 0xF;
                    metaData = metaData & 0xF;
                }
                blocks[i] = Block(pBlockData[i], skyLight, blockLight, metaData);
            }
            if (pBlockData) {
                delete[] pBlockData;
                pBlockData = nullptr;
            }
            if (pSkyLightData) {
                delete[] pSkyLightData;
                pSkyLightData = nullptr;
            }
            if (pBlockLightData) {
                delete[] pBlockLightData;
                pBlockLightData = nullptr;
            }
            if (pMetaData) {
                delete[] pMetaData;
                pMetaData = nullptr;
            }
            //std::cout << "Created Chunk at " << x << ", " << z << std::endl;
        }

        ~Chunk() {
            std::cout << "Unloaded Chunk at " << x << ", " << z << std::endl;
        }

        Block* getAllBlocks() {
            return blocks;
        }

        Block* getBlock(int x, uint y, int z) {
            if (y > CHUNK_HEIGHT-1) {
                return nullptr;
            }

            if (logoDebug) {
                int logo[5][28] = {
                    {1,1,0,0,1,1,1,0,0,1,0,0,1,0,1,0,1,1,1,0,1,1,1,0,1,0,0,1},
                    {1,0,1,0,1,0,0,0,0,1,0,0,1,0,1,0,1,0,1,0,1,0,0,0,1,0,1,0},
                    {1,1,0,0,1,1,0,0,0,1,0,0,1,1,0,0,1,0,1,0,1,0,0,0,1,1,0,0},
                    {1,0,1,0,1,0,0,0,0,1,0,0,1,0,1,0,1,0,1,0,1,0,0,0,1,0,1,0},
                    {1,1,0,0,1,1,1,0,1,1,1,0,1,1,1,0,1,1,1,0,1,1,1,0,1,0,0,1}
                };
                
                if (x >= 5 || z >= 28 || x < 0 || z < 0) {
                    return new Block(AIR);
                }

                if (y == 1 && logo[x][z] == 1) {
                    return new Block(COBBLESTONE);
                } else {
                    return new Block(AIR);
                }
            }

            x = x%CHUNK_WIDTH;
            z = z%CHUNK_WIDTH;
            if (x < 0) {
                x+=CHUNK_WIDTH;
            }
            if (z < 0) {
                z+=CHUNK_WIDTH;
            }
            return &blocks[y + z*CHUNK_HEIGHT + (x*CHUNK_HEIGHT*CHUNK_WIDTH)];
        }
};