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
CMAKE_SOURCE_DIR = /home/torben/Documents/GitHub/Betrock/build/_deps/zstrgitrepo-subbuild

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/torben/Documents/GitHub/Betrock/build/_deps/zstrgitrepo-subbuild

# Utility rule file for zstrgitrepo-populate.

# Include any custom commands dependencies for this target.
include CMakeFiles/zstrgitrepo-populate.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/zstrgitrepo-populate.dir/progress.make

CMakeFiles/zstrgitrepo-populate: CMakeFiles/zstrgitrepo-populate-complete

CMakeFiles/zstrgitrepo-populate-complete: zstrgitrepo-populate-prefix/src/zstrgitrepo-populate-stamp/zstrgitrepo-populate-install
CMakeFiles/zstrgitrepo-populate-complete: zstrgitrepo-populate-prefix/src/zstrgitrepo-populate-stamp/zstrgitrepo-populate-mkdir
CMakeFiles/zstrgitrepo-populate-complete: zstrgitrepo-populate-prefix/src/zstrgitrepo-populate-stamp/zstrgitrepo-populate-download
CMakeFiles/zstrgitrepo-populate-complete: zstrgitrepo-populate-prefix/src/zstrgitrepo-populate-stamp/zstrgitrepo-populate-update
CMakeFiles/zstrgitrepo-populate-complete: zstrgitrepo-populate-prefix/src/zstrgitrepo-populate-stamp/zstrgitrepo-populate-patch
CMakeFiles/zstrgitrepo-populate-complete: zstrgitrepo-populate-prefix/src/zstrgitrepo-populate-stamp/zstrgitrepo-populate-configure
CMakeFiles/zstrgitrepo-populate-complete: zstrgitrepo-populate-prefix/src/zstrgitrepo-populate-stamp/zstrgitrepo-populate-build
CMakeFiles/zstrgitrepo-populate-complete: zstrgitrepo-populate-prefix/src/zstrgitrepo-populate-stamp/zstrgitrepo-populate-install
CMakeFiles/zstrgitrepo-populate-complete: zstrgitrepo-populate-prefix/src/zstrgitrepo-populate-stamp/zstrgitrepo-populate-test
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/home/torben/Documents/GitHub/Betrock/build/_deps/zstrgitrepo-subbuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Completed 'zstrgitrepo-populate'"
	/usr/bin/cmake -E make_directory /home/torben/Documents/GitHub/Betrock/build/_deps/zstrgitrepo-subbuild/CMakeFiles
	/usr/bin/cmake -E touch /home/torben/Documents/GitHub/Betrock/build/_deps/zstrgitrepo-subbuild/CMakeFiles/zstrgitrepo-populate-complete
	/usr/bin/cmake -E touch /home/torben/Documents/GitHub/Betrock/build/_deps/zstrgitrepo-subbuild/zstrgitrepo-populate-prefix/src/zstrgitrepo-populate-stamp/zstrgitrepo-populate-done

zstrgitrepo-populate-prefix/src/zstrgitrepo-populate-stamp/zstrgitrepo-populate-update:
.PHONY : zstrgitrepo-populate-prefix/src/zstrgitrepo-populate-stamp/zstrgitrepo-populate-update

zstrgitrepo-populate-prefix/src/zstrgitrepo-populate-stamp/zstrgitrepo-populate-build: zstrgitrepo-populate-prefix/src/zstrgitrepo-populate-stamp/zstrgitrepo-populate-configure
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/home/torben/Documents/GitHub/Betrock/build/_deps/zstrgitrepo-subbuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "No build step for 'zstrgitrepo-populate'"
	cd /home/torben/Documents/GitHub/Betrock/build/_deps/zstrgitrepo-build && /usr/bin/cmake -E echo_append
	cd /home/torben/Documents/GitHub/Betrock/build/_deps/zstrgitrepo-build && /usr/bin/cmake -E touch /home/torben/Documents/GitHub/Betrock/build/_deps/zstrgitrepo-subbuild/zstrgitrepo-populate-prefix/src/zstrgitrepo-populate-stamp/zstrgitrepo-populate-build

zstrgitrepo-populate-prefix/src/zstrgitrepo-populate-stamp/zstrgitrepo-populate-configure: zstrgitrepo-populate-prefix/tmp/zstrgitrepo-populate-cfgcmd.txt
zstrgitrepo-populate-prefix/src/zstrgitrepo-populate-stamp/zstrgitrepo-populate-configure: zstrgitrepo-populate-prefix/src/zstrgitrepo-populate-stamp/zstrgitrepo-populate-patch
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/home/torben/Documents/GitHub/Betrock/build/_deps/zstrgitrepo-subbuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "No configure step for 'zstrgitrepo-populate'"
	cd /home/torben/Documents/GitHub/Betrock/build/_deps/zstrgitrepo-build && /usr/bin/cmake -E echo_append
	cd /home/torben/Documents/GitHub/Betrock/build/_deps/zstrgitrepo-build && /usr/bin/cmake -E touch /home/torben/Documents/GitHub/Betrock/build/_deps/zstrgitrepo-subbuild/zstrgitrepo-populate-prefix/src/zstrgitrepo-populate-stamp/zstrgitrepo-populate-configure

zstrgitrepo-populate-prefix/src/zstrgitrepo-populate-stamp/zstrgitrepo-populate-download: zstrgitrepo-populate-prefix/src/zstrgitrepo-populate-stamp/zstrgitrepo-populate-gitinfo.txt
zstrgitrepo-populate-prefix/src/zstrgitrepo-populate-stamp/zstrgitrepo-populate-download: zstrgitrepo-populate-prefix/src/zstrgitrepo-populate-stamp/zstrgitrepo-populate-mkdir
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/home/torben/Documents/GitHub/Betrock/build/_deps/zstrgitrepo-subbuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Performing download step (git clone) for 'zstrgitrepo-populate'"
	cd /home/torben/Documents/GitHub/Betrock/build/_deps && /usr/bin/cmake -P /home/torben/Documents/GitHub/Betrock/build/_deps/zstrgitrepo-subbuild/zstrgitrepo-populate-prefix/tmp/zstrgitrepo-populate-gitclone.cmake
	cd /home/torben/Documents/GitHub/Betrock/build/_deps && /usr/bin/cmake -E touch /home/torben/Documents/GitHub/Betrock/build/_deps/zstrgitrepo-subbuild/zstrgitrepo-populate-prefix/src/zstrgitrepo-populate-stamp/zstrgitrepo-populate-download

zstrgitrepo-populate-prefix/src/zstrgitrepo-populate-stamp/zstrgitrepo-populate-install: zstrgitrepo-populate-prefix/src/zstrgitrepo-populate-stamp/zstrgitrepo-populate-build
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/home/torben/Documents/GitHub/Betrock/build/_deps/zstrgitrepo-subbuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "No install step for 'zstrgitrepo-populate'"
	cd /home/torben/Documents/GitHub/Betrock/build/_deps/zstrgitrepo-build && /usr/bin/cmake -E echo_append
	cd /home/torben/Documents/GitHub/Betrock/build/_deps/zstrgitrepo-build && /usr/bin/cmake -E touch /home/torben/Documents/GitHub/Betrock/build/_deps/zstrgitrepo-subbuild/zstrgitrepo-populate-prefix/src/zstrgitrepo-populate-stamp/zstrgitrepo-populate-install

zstrgitrepo-populate-prefix/src/zstrgitrepo-populate-stamp/zstrgitrepo-populate-mkdir:
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/home/torben/Documents/GitHub/Betrock/build/_deps/zstrgitrepo-subbuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Creating directories for 'zstrgitrepo-populate'"
	/usr/bin/cmake -Dcfgdir= -P /home/torben/Documents/GitHub/Betrock/build/_deps/zstrgitrepo-subbuild/zstrgitrepo-populate-prefix/tmp/zstrgitrepo-populate-mkdirs.cmake
	/usr/bin/cmake -E touch /home/torben/Documents/GitHub/Betrock/build/_deps/zstrgitrepo-subbuild/zstrgitrepo-populate-prefix/src/zstrgitrepo-populate-stamp/zstrgitrepo-populate-mkdir

zstrgitrepo-populate-prefix/src/zstrgitrepo-populate-stamp/zstrgitrepo-populate-patch: zstrgitrepo-populate-prefix/src/zstrgitrepo-populate-stamp/zstrgitrepo-populate-patch-info.txt
zstrgitrepo-populate-prefix/src/zstrgitrepo-populate-stamp/zstrgitrepo-populate-patch: zstrgitrepo-populate-prefix/src/zstrgitrepo-populate-stamp/zstrgitrepo-populate-update
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/home/torben/Documents/GitHub/Betrock/build/_deps/zstrgitrepo-subbuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "No patch step for 'zstrgitrepo-populate'"
	/usr/bin/cmake -E echo_append
	/usr/bin/cmake -E touch /home/torben/Documents/GitHub/Betrock/build/_deps/zstrgitrepo-subbuild/zstrgitrepo-populate-prefix/src/zstrgitrepo-populate-stamp/zstrgitrepo-populate-patch

zstrgitrepo-populate-prefix/src/zstrgitrepo-populate-stamp/zstrgitrepo-populate-update:
.PHONY : zstrgitrepo-populate-prefix/src/zstrgitrepo-populate-stamp/zstrgitrepo-populate-update

zstrgitrepo-populate-prefix/src/zstrgitrepo-populate-stamp/zstrgitrepo-populate-test: zstrgitrepo-populate-prefix/src/zstrgitrepo-populate-stamp/zstrgitrepo-populate-install
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/home/torben/Documents/GitHub/Betrock/build/_deps/zstrgitrepo-subbuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "No test step for 'zstrgitrepo-populate'"
	cd /home/torben/Documents/GitHub/Betrock/build/_deps/zstrgitrepo-build && /usr/bin/cmake -E echo_append
	cd /home/torben/Documents/GitHub/Betrock/build/_deps/zstrgitrepo-build && /usr/bin/cmake -E touch /home/torben/Documents/GitHub/Betrock/build/_deps/zstrgitrepo-subbuild/zstrgitrepo-populate-prefix/src/zstrgitrepo-populate-stamp/zstrgitrepo-populate-test

zstrgitrepo-populate-prefix/src/zstrgitrepo-populate-stamp/zstrgitrepo-populate-update: zstrgitrepo-populate-prefix/tmp/zstrgitrepo-populate-gitupdate.cmake
zstrgitrepo-populate-prefix/src/zstrgitrepo-populate-stamp/zstrgitrepo-populate-update: zstrgitrepo-populate-prefix/src/zstrgitrepo-populate-stamp/zstrgitrepo-populate-update-info.txt
zstrgitrepo-populate-prefix/src/zstrgitrepo-populate-stamp/zstrgitrepo-populate-update: zstrgitrepo-populate-prefix/src/zstrgitrepo-populate-stamp/zstrgitrepo-populate-download
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/home/torben/Documents/GitHub/Betrock/build/_deps/zstrgitrepo-subbuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Performing update step for 'zstrgitrepo-populate'"
	cd /home/torben/Documents/GitHub/Betrock/build/_deps/zstrgitrepo-src && /usr/bin/cmake -Dcan_fetch=YES -P /home/torben/Documents/GitHub/Betrock/build/_deps/zstrgitrepo-subbuild/zstrgitrepo-populate-prefix/tmp/zstrgitrepo-populate-gitupdate.cmake

zstrgitrepo-populate: CMakeFiles/zstrgitrepo-populate
zstrgitrepo-populate: CMakeFiles/zstrgitrepo-populate-complete
zstrgitrepo-populate: zstrgitrepo-populate-prefix/src/zstrgitrepo-populate-stamp/zstrgitrepo-populate-build
zstrgitrepo-populate: zstrgitrepo-populate-prefix/src/zstrgitrepo-populate-stamp/zstrgitrepo-populate-configure
zstrgitrepo-populate: zstrgitrepo-populate-prefix/src/zstrgitrepo-populate-stamp/zstrgitrepo-populate-download
zstrgitrepo-populate: zstrgitrepo-populate-prefix/src/zstrgitrepo-populate-stamp/zstrgitrepo-populate-install
zstrgitrepo-populate: zstrgitrepo-populate-prefix/src/zstrgitrepo-populate-stamp/zstrgitrepo-populate-mkdir
zstrgitrepo-populate: zstrgitrepo-populate-prefix/src/zstrgitrepo-populate-stamp/zstrgitrepo-populate-patch
zstrgitrepo-populate: zstrgitrepo-populate-prefix/src/zstrgitrepo-populate-stamp/zstrgitrepo-populate-test
zstrgitrepo-populate: zstrgitrepo-populate-prefix/src/zstrgitrepo-populate-stamp/zstrgitrepo-populate-update
zstrgitrepo-populate: CMakeFiles/zstrgitrepo-populate.dir/build.make
.PHONY : zstrgitrepo-populate

# Rule to build all files generated by this target.
CMakeFiles/zstrgitrepo-populate.dir/build: zstrgitrepo-populate
.PHONY : CMakeFiles/zstrgitrepo-populate.dir/build

CMakeFiles/zstrgitrepo-populate.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/zstrgitrepo-populate.dir/cmake_clean.cmake
.PHONY : CMakeFiles/zstrgitrepo-populate.dir/clean

CMakeFiles/zstrgitrepo-populate.dir/depend:
	cd /home/torben/Documents/GitHub/Betrock/build/_deps/zstrgitrepo-subbuild && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/torben/Documents/GitHub/Betrock/build/_deps/zstrgitrepo-subbuild /home/torben/Documents/GitHub/Betrock/build/_deps/zstrgitrepo-subbuild /home/torben/Documents/GitHub/Betrock/build/_deps/zstrgitrepo-subbuild /home/torben/Documents/GitHub/Betrock/build/_deps/zstrgitrepo-subbuild /home/torben/Documents/GitHub/Betrock/build/_deps/zstrgitrepo-subbuild/CMakeFiles/zstrgitrepo-populate.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/zstrgitrepo-populate.dir/depend
