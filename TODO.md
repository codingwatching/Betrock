# TODO
### Goals for Version 0.4.0
- [ ] Make fog act in world space, not view space!
- [ ] Biome Visuals
- [ ] Fix Chunk Loading Memory leak
- [ ] Windows Version
      - stb causing issues here

### Goals for Version 0.3.0
- [x] Smooth Lighting Fixes (turns out Minecrafts lighting just works like that)
- [x] Sky (was borked due to model loading being borked)

### Goals for Version 0.2.0
- Visual Flair
    - [x] Fog
    - [x] Smooth Lighting
    - [x] Ambient Occlusion
- Gameplay
    - [x] Chunk Loading
        - [x] Chunk Queue
        - [x] Fix Chunk Loading Crash
        - [ ] Fix Chunk Loading Memory leak
            - Caused by NBT Data
        - [x]  Threaded Chunk Loading
    - [x] Dynamic Chunk Loading as one moves
    - [x] Gravity
    - [x] Smooth Movement

### Goals for Version 0.1.0
- [x] Import Beta 1.7.3 compliant Minecraft worlds
    - [x] Decode Chunk Offset
    - [x] Decompress Chunk Data
        - [x] Gzip
        - [x] Zlib
    - [x] Decode NBT Data
    - [x] Turn NBT Data into C++ Objects
    - [x] Extract Block Data
- [x] Render Block Data (via OpenGL)
    - [x] Render *something*
    - [x] Render a Texture
    - [x] Render a Cube
    - [x] Have a Camera that's keyboard and mouse controlled
    - [x] Add Lighting
    - [x] Model Importing
        - [x] OBJ
        - ~~[ ] glTF~~
    - [x] Render a Chunk
    - [x] Render a Region
    - [x] Render Multiple Regions
    - [x] Render per-face Block lighting
        - [x] Render Sky Lighting
        - [x] Render Block Lighting