# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.28

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/torben/Documents/GitHub/Betrock

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/torben/Documents/GitHub/Betrock/build

# Include any dependencies generated for this target.
include CMakeFiles/Betrock.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/Betrock.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/Betrock.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Betrock.dir/flags.make

CMakeFiles/Betrock.dir/src/model/chunkBuilder.cpp.o: CMakeFiles/Betrock.dir/flags.make
CMakeFiles/Betrock.dir/src/model/chunkBuilder.cpp.o: /home/torben/Documents/GitHub/Betrock/src/model/chunkBuilder.cpp
CMakeFiles/Betrock.dir/src/model/chunkBuilder.cpp.o: CMakeFiles/Betrock.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/torben/Documents/GitHub/Betrock/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Betrock.dir/src/model/chunkBuilder.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Betrock.dir/src/model/chunkBuilder.cpp.o -MF CMakeFiles/Betrock.dir/src/model/chunkBuilder.cpp.o.d -o CMakeFiles/Betrock.dir/src/model/chunkBuilder.cpp.o -c /home/torben/Documents/GitHub/Betrock/src/model/chunkBuilder.cpp

CMakeFiles/Betrock.dir/src/model/chunkBuilder.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Betrock.dir/src/model/chunkBuilder.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/torben/Documents/GitHub/Betrock/src/model/chunkBuilder.cpp > CMakeFiles/Betrock.dir/src/model/chunkBuilder.cpp.i

CMakeFiles/Betrock.dir/src/model/chunkBuilder.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Betrock.dir/src/model/chunkBuilder.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/torben/Documents/GitHub/Betrock/src/model/chunkBuilder.cpp -o CMakeFiles/Betrock.dir/src/model/chunkBuilder.cpp.s

CMakeFiles/Betrock.dir/src/model/obj.cpp.o: CMakeFiles/Betrock.dir/flags.make
CMakeFiles/Betrock.dir/src/model/obj.cpp.o: /home/torben/Documents/GitHub/Betrock/src/model/obj.cpp
CMakeFiles/Betrock.dir/src/model/obj.cpp.o: CMakeFiles/Betrock.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/torben/Documents/GitHub/Betrock/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/Betrock.dir/src/model/obj.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Betrock.dir/src/model/obj.cpp.o -MF CMakeFiles/Betrock.dir/src/model/obj.cpp.o.d -o CMakeFiles/Betrock.dir/src/model/obj.cpp.o -c /home/torben/Documents/GitHub/Betrock/src/model/obj.cpp

CMakeFiles/Betrock.dir/src/model/obj.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Betrock.dir/src/model/obj.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/torben/Documents/GitHub/Betrock/src/model/obj.cpp > CMakeFiles/Betrock.dir/src/model/obj.cpp.i

CMakeFiles/Betrock.dir/src/model/obj.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Betrock.dir/src/model/obj.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/torben/Documents/GitHub/Betrock/src/model/obj.cpp -o CMakeFiles/Betrock.dir/src/model/obj.cpp.s

CMakeFiles/Betrock.dir/src/model/model.cpp.o: CMakeFiles/Betrock.dir/flags.make
CMakeFiles/Betrock.dir/src/model/model.cpp.o: /home/torben/Documents/GitHub/Betrock/src/model/model.cpp
CMakeFiles/Betrock.dir/src/model/model.cpp.o: CMakeFiles/Betrock.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/torben/Documents/GitHub/Betrock/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/Betrock.dir/src/model/model.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Betrock.dir/src/model/model.cpp.o -MF CMakeFiles/Betrock.dir/src/model/model.cpp.o.d -o CMakeFiles/Betrock.dir/src/model/model.cpp.o -c /home/torben/Documents/GitHub/Betrock/src/model/model.cpp

CMakeFiles/Betrock.dir/src/model/model.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Betrock.dir/src/model/model.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/torben/Documents/GitHub/Betrock/src/model/model.cpp > CMakeFiles/Betrock.dir/src/model/model.cpp.i

CMakeFiles/Betrock.dir/src/model/model.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Betrock.dir/src/model/model.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/torben/Documents/GitHub/Betrock/src/model/model.cpp -o CMakeFiles/Betrock.dir/src/model/model.cpp.s

CMakeFiles/Betrock.dir/src/nbt/nbt.cpp.o: CMakeFiles/Betrock.dir/flags.make
CMakeFiles/Betrock.dir/src/nbt/nbt.cpp.o: /home/torben/Documents/GitHub/Betrock/src/nbt/nbt.cpp
CMakeFiles/Betrock.dir/src/nbt/nbt.cpp.o: CMakeFiles/Betrock.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/torben/Documents/GitHub/Betrock/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/Betrock.dir/src/nbt/nbt.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Betrock.dir/src/nbt/nbt.cpp.o -MF CMakeFiles/Betrock.dir/src/nbt/nbt.cpp.o.d -o CMakeFiles/Betrock.dir/src/nbt/nbt.cpp.o -c /home/torben/Documents/GitHub/Betrock/src/nbt/nbt.cpp

CMakeFiles/Betrock.dir/src/nbt/nbt.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Betrock.dir/src/nbt/nbt.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/torben/Documents/GitHub/Betrock/src/nbt/nbt.cpp > CMakeFiles/Betrock.dir/src/nbt/nbt.cpp.i

CMakeFiles/Betrock.dir/src/nbt/nbt.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Betrock.dir/src/nbt/nbt.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/torben/Documents/GitHub/Betrock/src/nbt/nbt.cpp -o CMakeFiles/Betrock.dir/src/nbt/nbt.cpp.s

CMakeFiles/Betrock.dir/src/nbt/nbttag.cpp.o: CMakeFiles/Betrock.dir/flags.make
CMakeFiles/Betrock.dir/src/nbt/nbttag.cpp.o: /home/torben/Documents/GitHub/Betrock/src/nbt/nbttag.cpp
CMakeFiles/Betrock.dir/src/nbt/nbttag.cpp.o: CMakeFiles/Betrock.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/torben/Documents/GitHub/Betrock/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/Betrock.dir/src/nbt/nbttag.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Betrock.dir/src/nbt/nbttag.cpp.o -MF CMakeFiles/Betrock.dir/src/nbt/nbttag.cpp.o.d -o CMakeFiles/Betrock.dir/src/nbt/nbttag.cpp.o -c /home/torben/Documents/GitHub/Betrock/src/nbt/nbttag.cpp

CMakeFiles/Betrock.dir/src/nbt/nbttag.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Betrock.dir/src/nbt/nbttag.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/torben/Documents/GitHub/Betrock/src/nbt/nbttag.cpp > CMakeFiles/Betrock.dir/src/nbt/nbttag.cpp.i

CMakeFiles/Betrock.dir/src/nbt/nbttag.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Betrock.dir/src/nbt/nbttag.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/torben/Documents/GitHub/Betrock/src/nbt/nbttag.cpp -o CMakeFiles/Betrock.dir/src/nbt/nbttag.cpp.s

CMakeFiles/Betrock.dir/src/render/shader.cpp.o: CMakeFiles/Betrock.dir/flags.make
CMakeFiles/Betrock.dir/src/render/shader.cpp.o: /home/torben/Documents/GitHub/Betrock/src/render/shader.cpp
CMakeFiles/Betrock.dir/src/render/shader.cpp.o: CMakeFiles/Betrock.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/torben/Documents/GitHub/Betrock/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/Betrock.dir/src/render/shader.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Betrock.dir/src/render/shader.cpp.o -MF CMakeFiles/Betrock.dir/src/render/shader.cpp.o.d -o CMakeFiles/Betrock.dir/src/render/shader.cpp.o -c /home/torben/Documents/GitHub/Betrock/src/render/shader.cpp

CMakeFiles/Betrock.dir/src/render/shader.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Betrock.dir/src/render/shader.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/torben/Documents/GitHub/Betrock/src/render/shader.cpp > CMakeFiles/Betrock.dir/src/render/shader.cpp.i

CMakeFiles/Betrock.dir/src/render/shader.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Betrock.dir/src/render/shader.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/torben/Documents/GitHub/Betrock/src/render/shader.cpp -o CMakeFiles/Betrock.dir/src/render/shader.cpp.s

CMakeFiles/Betrock.dir/src/render/vao.cpp.o: CMakeFiles/Betrock.dir/flags.make
CMakeFiles/Betrock.dir/src/render/vao.cpp.o: /home/torben/Documents/GitHub/Betrock/src/render/vao.cpp
CMakeFiles/Betrock.dir/src/render/vao.cpp.o: CMakeFiles/Betrock.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/torben/Documents/GitHub/Betrock/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/Betrock.dir/src/render/vao.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Betrock.dir/src/render/vao.cpp.o -MF CMakeFiles/Betrock.dir/src/render/vao.cpp.o.d -o CMakeFiles/Betrock.dir/src/render/vao.cpp.o -c /home/torben/Documents/GitHub/Betrock/src/render/vao.cpp

CMakeFiles/Betrock.dir/src/render/vao.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Betrock.dir/src/render/vao.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/torben/Documents/GitHub/Betrock/src/render/vao.cpp > CMakeFiles/Betrock.dir/src/render/vao.cpp.i

CMakeFiles/Betrock.dir/src/render/vao.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Betrock.dir/src/render/vao.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/torben/Documents/GitHub/Betrock/src/render/vao.cpp -o CMakeFiles/Betrock.dir/src/render/vao.cpp.s

CMakeFiles/Betrock.dir/src/render/vbo.cpp.o: CMakeFiles/Betrock.dir/flags.make
CMakeFiles/Betrock.dir/src/render/vbo.cpp.o: /home/torben/Documents/GitHub/Betrock/src/render/vbo.cpp
CMakeFiles/Betrock.dir/src/render/vbo.cpp.o: CMakeFiles/Betrock.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/torben/Documents/GitHub/Betrock/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/Betrock.dir/src/render/vbo.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Betrock.dir/src/render/vbo.cpp.o -MF CMakeFiles/Betrock.dir/src/render/vbo.cpp.o.d -o CMakeFiles/Betrock.dir/src/render/vbo.cpp.o -c /home/torben/Documents/GitHub/Betrock/src/render/vbo.cpp

CMakeFiles/Betrock.dir/src/render/vbo.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Betrock.dir/src/render/vbo.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/torben/Documents/GitHub/Betrock/src/render/vbo.cpp > CMakeFiles/Betrock.dir/src/render/vbo.cpp.i

CMakeFiles/Betrock.dir/src/render/vbo.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Betrock.dir/src/render/vbo.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/torben/Documents/GitHub/Betrock/src/render/vbo.cpp -o CMakeFiles/Betrock.dir/src/render/vbo.cpp.s

CMakeFiles/Betrock.dir/src/render/ebo.cpp.o: CMakeFiles/Betrock.dir/flags.make
CMakeFiles/Betrock.dir/src/render/ebo.cpp.o: /home/torben/Documents/GitHub/Betrock/src/render/ebo.cpp
CMakeFiles/Betrock.dir/src/render/ebo.cpp.o: CMakeFiles/Betrock.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/torben/Documents/GitHub/Betrock/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object CMakeFiles/Betrock.dir/src/render/ebo.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Betrock.dir/src/render/ebo.cpp.o -MF CMakeFiles/Betrock.dir/src/render/ebo.cpp.o.d -o CMakeFiles/Betrock.dir/src/render/ebo.cpp.o -c /home/torben/Documents/GitHub/Betrock/src/render/ebo.cpp

CMakeFiles/Betrock.dir/src/render/ebo.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Betrock.dir/src/render/ebo.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/torben/Documents/GitHub/Betrock/src/render/ebo.cpp > CMakeFiles/Betrock.dir/src/render/ebo.cpp.i

CMakeFiles/Betrock.dir/src/render/ebo.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Betrock.dir/src/render/ebo.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/torben/Documents/GitHub/Betrock/src/render/ebo.cpp -o CMakeFiles/Betrock.dir/src/render/ebo.cpp.s

CMakeFiles/Betrock.dir/src/render/texture.cpp.o: CMakeFiles/Betrock.dir/flags.make
CMakeFiles/Betrock.dir/src/render/texture.cpp.o: /home/torben/Documents/GitHub/Betrock/src/render/texture.cpp
CMakeFiles/Betrock.dir/src/render/texture.cpp.o: CMakeFiles/Betrock.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/torben/Documents/GitHub/Betrock/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object CMakeFiles/Betrock.dir/src/render/texture.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Betrock.dir/src/render/texture.cpp.o -MF CMakeFiles/Betrock.dir/src/render/texture.cpp.o.d -o CMakeFiles/Betrock.dir/src/render/texture.cpp.o -c /home/torben/Documents/GitHub/Betrock/src/render/texture.cpp

CMakeFiles/Betrock.dir/src/render/texture.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Betrock.dir/src/render/texture.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/torben/Documents/GitHub/Betrock/src/render/texture.cpp > CMakeFiles/Betrock.dir/src/render/texture.cpp.i

CMakeFiles/Betrock.dir/src/render/texture.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Betrock.dir/src/render/texture.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/torben/Documents/GitHub/Betrock/src/render/texture.cpp -o CMakeFiles/Betrock.dir/src/render/texture.cpp.s

CMakeFiles/Betrock.dir/src/render/camera.cpp.o: CMakeFiles/Betrock.dir/flags.make
CMakeFiles/Betrock.dir/src/render/camera.cpp.o: /home/torben/Documents/GitHub/Betrock/src/render/camera.cpp
CMakeFiles/Betrock.dir/src/render/camera.cpp.o: CMakeFiles/Betrock.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/torben/Documents/GitHub/Betrock/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object CMakeFiles/Betrock.dir/src/render/camera.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Betrock.dir/src/render/camera.cpp.o -MF CMakeFiles/Betrock.dir/src/render/camera.cpp.o.d -o CMakeFiles/Betrock.dir/src/render/camera.cpp.o -c /home/torben/Documents/GitHub/Betrock/src/render/camera.cpp

CMakeFiles/Betrock.dir/src/render/camera.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Betrock.dir/src/render/camera.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/torben/Documents/GitHub/Betrock/src/render/camera.cpp > CMakeFiles/Betrock.dir/src/render/camera.cpp.i

CMakeFiles/Betrock.dir/src/render/camera.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Betrock.dir/src/render/camera.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/torben/Documents/GitHub/Betrock/src/render/camera.cpp -o CMakeFiles/Betrock.dir/src/render/camera.cpp.s

CMakeFiles/Betrock.dir/src/render/mesh.cpp.o: CMakeFiles/Betrock.dir/flags.make
CMakeFiles/Betrock.dir/src/render/mesh.cpp.o: /home/torben/Documents/GitHub/Betrock/src/render/mesh.cpp
CMakeFiles/Betrock.dir/src/render/mesh.cpp.o: CMakeFiles/Betrock.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/torben/Documents/GitHub/Betrock/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building CXX object CMakeFiles/Betrock.dir/src/render/mesh.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Betrock.dir/src/render/mesh.cpp.o -MF CMakeFiles/Betrock.dir/src/render/mesh.cpp.o.d -o CMakeFiles/Betrock.dir/src/render/mesh.cpp.o -c /home/torben/Documents/GitHub/Betrock/src/render/mesh.cpp

CMakeFiles/Betrock.dir/src/render/mesh.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Betrock.dir/src/render/mesh.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/torben/Documents/GitHub/Betrock/src/render/mesh.cpp > CMakeFiles/Betrock.dir/src/render/mesh.cpp.i

CMakeFiles/Betrock.dir/src/render/mesh.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Betrock.dir/src/render/mesh.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/torben/Documents/GitHub/Betrock/src/render/mesh.cpp -o CMakeFiles/Betrock.dir/src/render/mesh.cpp.s

CMakeFiles/Betrock.dir/src/world/world.cpp.o: CMakeFiles/Betrock.dir/flags.make
CMakeFiles/Betrock.dir/src/world/world.cpp.o: /home/torben/Documents/GitHub/Betrock/src/world/world.cpp
CMakeFiles/Betrock.dir/src/world/world.cpp.o: CMakeFiles/Betrock.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/torben/Documents/GitHub/Betrock/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building CXX object CMakeFiles/Betrock.dir/src/world/world.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Betrock.dir/src/world/world.cpp.o -MF CMakeFiles/Betrock.dir/src/world/world.cpp.o.d -o CMakeFiles/Betrock.dir/src/world/world.cpp.o -c /home/torben/Documents/GitHub/Betrock/src/world/world.cpp

CMakeFiles/Betrock.dir/src/world/world.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Betrock.dir/src/world/world.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/torben/Documents/GitHub/Betrock/src/world/world.cpp > CMakeFiles/Betrock.dir/src/world/world.cpp.i

CMakeFiles/Betrock.dir/src/world/world.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Betrock.dir/src/world/world.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/torben/Documents/GitHub/Betrock/src/world/world.cpp -o CMakeFiles/Betrock.dir/src/world/world.cpp.s

CMakeFiles/Betrock.dir/src/world/regionLoader.cpp.o: CMakeFiles/Betrock.dir/flags.make
CMakeFiles/Betrock.dir/src/world/regionLoader.cpp.o: /home/torben/Documents/GitHub/Betrock/src/world/regionLoader.cpp
CMakeFiles/Betrock.dir/src/world/regionLoader.cpp.o: CMakeFiles/Betrock.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/torben/Documents/GitHub/Betrock/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Building CXX object CMakeFiles/Betrock.dir/src/world/regionLoader.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Betrock.dir/src/world/regionLoader.cpp.o -MF CMakeFiles/Betrock.dir/src/world/regionLoader.cpp.o.d -o CMakeFiles/Betrock.dir/src/world/regionLoader.cpp.o -c /home/torben/Documents/GitHub/Betrock/src/world/regionLoader.cpp

CMakeFiles/Betrock.dir/src/world/regionLoader.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Betrock.dir/src/world/regionLoader.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/torben/Documents/GitHub/Betrock/src/world/regionLoader.cpp > CMakeFiles/Betrock.dir/src/world/regionLoader.cpp.i

CMakeFiles/Betrock.dir/src/world/regionLoader.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Betrock.dir/src/world/regionLoader.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/torben/Documents/GitHub/Betrock/src/world/regionLoader.cpp -o CMakeFiles/Betrock.dir/src/world/regionLoader.cpp.s

CMakeFiles/Betrock.dir/src/world/region.cpp.o: CMakeFiles/Betrock.dir/flags.make
CMakeFiles/Betrock.dir/src/world/region.cpp.o: /home/torben/Documents/GitHub/Betrock/src/world/region.cpp
CMakeFiles/Betrock.dir/src/world/region.cpp.o: CMakeFiles/Betrock.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/torben/Documents/GitHub/Betrock/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_15) "Building CXX object CMakeFiles/Betrock.dir/src/world/region.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Betrock.dir/src/world/region.cpp.o -MF CMakeFiles/Betrock.dir/src/world/region.cpp.o.d -o CMakeFiles/Betrock.dir/src/world/region.cpp.o -c /home/torben/Documents/GitHub/Betrock/src/world/region.cpp

CMakeFiles/Betrock.dir/src/world/region.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Betrock.dir/src/world/region.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/torben/Documents/GitHub/Betrock/src/world/region.cpp > CMakeFiles/Betrock.dir/src/world/region.cpp.i

CMakeFiles/Betrock.dir/src/world/region.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Betrock.dir/src/world/region.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/torben/Documents/GitHub/Betrock/src/world/region.cpp -o CMakeFiles/Betrock.dir/src/world/region.cpp.s

CMakeFiles/Betrock.dir/src/world/chunk.cpp.o: CMakeFiles/Betrock.dir/flags.make
CMakeFiles/Betrock.dir/src/world/chunk.cpp.o: /home/torben/Documents/GitHub/Betrock/src/world/chunk.cpp
CMakeFiles/Betrock.dir/src/world/chunk.cpp.o: CMakeFiles/Betrock.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/torben/Documents/GitHub/Betrock/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_16) "Building CXX object CMakeFiles/Betrock.dir/src/world/chunk.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Betrock.dir/src/world/chunk.cpp.o -MF CMakeFiles/Betrock.dir/src/world/chunk.cpp.o.d -o CMakeFiles/Betrock.dir/src/world/chunk.cpp.o -c /home/torben/Documents/GitHub/Betrock/src/world/chunk.cpp

CMakeFiles/Betrock.dir/src/world/chunk.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Betrock.dir/src/world/chunk.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/torben/Documents/GitHub/Betrock/src/world/chunk.cpp > CMakeFiles/Betrock.dir/src/world/chunk.cpp.i

CMakeFiles/Betrock.dir/src/world/chunk.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Betrock.dir/src/world/chunk.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/torben/Documents/GitHub/Betrock/src/world/chunk.cpp -o CMakeFiles/Betrock.dir/src/world/chunk.cpp.s

CMakeFiles/Betrock.dir/src/world/block.cpp.o: CMakeFiles/Betrock.dir/flags.make
CMakeFiles/Betrock.dir/src/world/block.cpp.o: /home/torben/Documents/GitHub/Betrock/src/world/block.cpp
CMakeFiles/Betrock.dir/src/world/block.cpp.o: CMakeFiles/Betrock.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/torben/Documents/GitHub/Betrock/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_17) "Building CXX object CMakeFiles/Betrock.dir/src/world/block.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Betrock.dir/src/world/block.cpp.o -MF CMakeFiles/Betrock.dir/src/world/block.cpp.o.d -o CMakeFiles/Betrock.dir/src/world/block.cpp.o -c /home/torben/Documents/GitHub/Betrock/src/world/block.cpp

CMakeFiles/Betrock.dir/src/world/block.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Betrock.dir/src/world/block.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/torben/Documents/GitHub/Betrock/src/world/block.cpp > CMakeFiles/Betrock.dir/src/world/block.cpp.i

CMakeFiles/Betrock.dir/src/world/block.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Betrock.dir/src/world/block.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/torben/Documents/GitHub/Betrock/src/world/block.cpp -o CMakeFiles/Betrock.dir/src/world/block.cpp.s

CMakeFiles/Betrock.dir/src/external/glad.c.o: CMakeFiles/Betrock.dir/flags.make
CMakeFiles/Betrock.dir/src/external/glad.c.o: /home/torben/Documents/GitHub/Betrock/src/external/glad.c
CMakeFiles/Betrock.dir/src/external/glad.c.o: CMakeFiles/Betrock.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/torben/Documents/GitHub/Betrock/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_18) "Building C object CMakeFiles/Betrock.dir/src/external/glad.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/Betrock.dir/src/external/glad.c.o -MF CMakeFiles/Betrock.dir/src/external/glad.c.o.d -o CMakeFiles/Betrock.dir/src/external/glad.c.o -c /home/torben/Documents/GitHub/Betrock/src/external/glad.c

CMakeFiles/Betrock.dir/src/external/glad.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/Betrock.dir/src/external/glad.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/torben/Documents/GitHub/Betrock/src/external/glad.c > CMakeFiles/Betrock.dir/src/external/glad.c.i

CMakeFiles/Betrock.dir/src/external/glad.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/Betrock.dir/src/external/glad.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/torben/Documents/GitHub/Betrock/src/external/glad.c -o CMakeFiles/Betrock.dir/src/external/glad.c.s

CMakeFiles/Betrock.dir/src/helper.cpp.o: CMakeFiles/Betrock.dir/flags.make
CMakeFiles/Betrock.dir/src/helper.cpp.o: /home/torben/Documents/GitHub/Betrock/src/helper.cpp
CMakeFiles/Betrock.dir/src/helper.cpp.o: CMakeFiles/Betrock.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/torben/Documents/GitHub/Betrock/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_19) "Building CXX object CMakeFiles/Betrock.dir/src/helper.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Betrock.dir/src/helper.cpp.o -MF CMakeFiles/Betrock.dir/src/helper.cpp.o.d -o CMakeFiles/Betrock.dir/src/helper.cpp.o -c /home/torben/Documents/GitHub/Betrock/src/helper.cpp

CMakeFiles/Betrock.dir/src/helper.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Betrock.dir/src/helper.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/torben/Documents/GitHub/Betrock/src/helper.cpp > CMakeFiles/Betrock.dir/src/helper.cpp.i

CMakeFiles/Betrock.dir/src/helper.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Betrock.dir/src/helper.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/torben/Documents/GitHub/Betrock/src/helper.cpp -o CMakeFiles/Betrock.dir/src/helper.cpp.s

CMakeFiles/Betrock.dir/src/main.cpp.o: CMakeFiles/Betrock.dir/flags.make
CMakeFiles/Betrock.dir/src/main.cpp.o: /home/torben/Documents/GitHub/Betrock/src/main.cpp
CMakeFiles/Betrock.dir/src/main.cpp.o: CMakeFiles/Betrock.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/torben/Documents/GitHub/Betrock/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_20) "Building CXX object CMakeFiles/Betrock.dir/src/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Betrock.dir/src/main.cpp.o -MF CMakeFiles/Betrock.dir/src/main.cpp.o.d -o CMakeFiles/Betrock.dir/src/main.cpp.o -c /home/torben/Documents/GitHub/Betrock/src/main.cpp

CMakeFiles/Betrock.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Betrock.dir/src/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/torben/Documents/GitHub/Betrock/src/main.cpp > CMakeFiles/Betrock.dir/src/main.cpp.i

CMakeFiles/Betrock.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Betrock.dir/src/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/torben/Documents/GitHub/Betrock/src/main.cpp -o CMakeFiles/Betrock.dir/src/main.cpp.s

# Object files for target Betrock
Betrock_OBJECTS = \
"CMakeFiles/Betrock.dir/src/model/chunkBuilder.cpp.o" \
"CMakeFiles/Betrock.dir/src/model/obj.cpp.o" \
"CMakeFiles/Betrock.dir/src/model/model.cpp.o" \
"CMakeFiles/Betrock.dir/src/nbt/nbt.cpp.o" \
"CMakeFiles/Betrock.dir/src/nbt/nbttag.cpp.o" \
"CMakeFiles/Betrock.dir/src/render/shader.cpp.o" \
"CMakeFiles/Betrock.dir/src/render/vao.cpp.o" \
"CMakeFiles/Betrock.dir/src/render/vbo.cpp.o" \
"CMakeFiles/Betrock.dir/src/render/ebo.cpp.o" \
"CMakeFiles/Betrock.dir/src/render/texture.cpp.o" \
"CMakeFiles/Betrock.dir/src/render/camera.cpp.o" \
"CMakeFiles/Betrock.dir/src/render/mesh.cpp.o" \
"CMakeFiles/Betrock.dir/src/world/world.cpp.o" \
"CMakeFiles/Betrock.dir/src/world/regionLoader.cpp.o" \
"CMakeFiles/Betrock.dir/src/world/region.cpp.o" \
"CMakeFiles/Betrock.dir/src/world/chunk.cpp.o" \
"CMakeFiles/Betrock.dir/src/world/block.cpp.o" \
"CMakeFiles/Betrock.dir/src/external/glad.c.o" \
"CMakeFiles/Betrock.dir/src/helper.cpp.o" \
"CMakeFiles/Betrock.dir/src/main.cpp.o"

# External object files for target Betrock
Betrock_EXTERNAL_OBJECTS =

Betrock: CMakeFiles/Betrock.dir/src/model/chunkBuilder.cpp.o
Betrock: CMakeFiles/Betrock.dir/src/model/obj.cpp.o
Betrock: CMakeFiles/Betrock.dir/src/model/model.cpp.o
Betrock: CMakeFiles/Betrock.dir/src/nbt/nbt.cpp.o
Betrock: CMakeFiles/Betrock.dir/src/nbt/nbttag.cpp.o
Betrock: CMakeFiles/Betrock.dir/src/render/shader.cpp.o
Betrock: CMakeFiles/Betrock.dir/src/render/vao.cpp.o
Betrock: CMakeFiles/Betrock.dir/src/render/vbo.cpp.o
Betrock: CMakeFiles/Betrock.dir/src/render/ebo.cpp.o
Betrock: CMakeFiles/Betrock.dir/src/render/texture.cpp.o
Betrock: CMakeFiles/Betrock.dir/src/render/camera.cpp.o
Betrock: CMakeFiles/Betrock.dir/src/render/mesh.cpp.o
Betrock: CMakeFiles/Betrock.dir/src/world/world.cpp.o
Betrock: CMakeFiles/Betrock.dir/src/world/regionLoader.cpp.o
Betrock: CMakeFiles/Betrock.dir/src/world/region.cpp.o
Betrock: CMakeFiles/Betrock.dir/src/world/chunk.cpp.o
Betrock: CMakeFiles/Betrock.dir/src/world/block.cpp.o
Betrock: CMakeFiles/Betrock.dir/src/external/glad.c.o
Betrock: CMakeFiles/Betrock.dir/src/helper.cpp.o
Betrock: CMakeFiles/Betrock.dir/src/main.cpp.o
Betrock: CMakeFiles/Betrock.dir/build.make
Betrock: /usr/lib/x86_64-linux-gnu/libglfw.so.3.3
Betrock: /usr/lib/x86_64-linux-gnu/libGLX.so
Betrock: /usr/lib/x86_64-linux-gnu/libOpenGL.so
Betrock: CMakeFiles/Betrock.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/torben/Documents/GitHub/Betrock/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_21) "Linking CXX executable Betrock"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Betrock.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Betrock.dir/build: Betrock
.PHONY : CMakeFiles/Betrock.dir/build

CMakeFiles/Betrock.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Betrock.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Betrock.dir/clean

CMakeFiles/Betrock.dir/depend:
	cd /home/torben/Documents/GitHub/Betrock/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/torben/Documents/GitHub/Betrock /home/torben/Documents/GitHub/Betrock /home/torben/Documents/GitHub/Betrock/build /home/torben/Documents/GitHub/Betrock/build /home/torben/Documents/GitHub/Betrock/build/CMakeFiles/Betrock.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/Betrock.dir/depend
