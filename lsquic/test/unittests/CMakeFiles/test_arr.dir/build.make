# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
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
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/aahan/MY-GIT-REPO/NEW/lsquic

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/aahan/MY-GIT-REPO/NEW/lsquic

# Include any dependencies generated for this target.
include test/unittests/CMakeFiles/test_arr.dir/depend.make

# Include the progress variables for this target.
include test/unittests/CMakeFiles/test_arr.dir/progress.make

# Include the compile flags for this target's objects.
include test/unittests/CMakeFiles/test_arr.dir/flags.make

test/unittests/CMakeFiles/test_arr.dir/test_arr.c.o: test/unittests/CMakeFiles/test_arr.dir/flags.make
test/unittests/CMakeFiles/test_arr.dir/test_arr.c.o: test/unittests/test_arr.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/aahan/MY-GIT-REPO/NEW/lsquic/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object test/unittests/CMakeFiles/test_arr.dir/test_arr.c.o"
	cd /home/aahan/MY-GIT-REPO/NEW/lsquic/test/unittests && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/test_arr.dir/test_arr.c.o   -c /home/aahan/MY-GIT-REPO/NEW/lsquic/test/unittests/test_arr.c

test/unittests/CMakeFiles/test_arr.dir/test_arr.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/test_arr.dir/test_arr.c.i"
	cd /home/aahan/MY-GIT-REPO/NEW/lsquic/test/unittests && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/aahan/MY-GIT-REPO/NEW/lsquic/test/unittests/test_arr.c > CMakeFiles/test_arr.dir/test_arr.c.i

test/unittests/CMakeFiles/test_arr.dir/test_arr.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/test_arr.dir/test_arr.c.s"
	cd /home/aahan/MY-GIT-REPO/NEW/lsquic/test/unittests && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/aahan/MY-GIT-REPO/NEW/lsquic/test/unittests/test_arr.c -o CMakeFiles/test_arr.dir/test_arr.c.s

test/unittests/CMakeFiles/test_arr.dir/test_arr.c.o.requires:

.PHONY : test/unittests/CMakeFiles/test_arr.dir/test_arr.c.o.requires

test/unittests/CMakeFiles/test_arr.dir/test_arr.c.o.provides: test/unittests/CMakeFiles/test_arr.dir/test_arr.c.o.requires
	$(MAKE) -f test/unittests/CMakeFiles/test_arr.dir/build.make test/unittests/CMakeFiles/test_arr.dir/test_arr.c.o.provides.build
.PHONY : test/unittests/CMakeFiles/test_arr.dir/test_arr.c.o.provides

test/unittests/CMakeFiles/test_arr.dir/test_arr.c.o.provides.build: test/unittests/CMakeFiles/test_arr.dir/test_arr.c.o


# Object files for target test_arr
test_arr_OBJECTS = \
"CMakeFiles/test_arr.dir/test_arr.c.o"

# External object files for target test_arr
test_arr_EXTERNAL_OBJECTS =

test/unittests/test_arr: test/unittests/CMakeFiles/test_arr.dir/test_arr.c.o
test/unittests/test_arr: test/unittests/CMakeFiles/test_arr.dir/build.make
test/unittests/test_arr: src/liblsquic/liblsquic.a
test/unittests/test_arr: /usr/lib/x86_64-linux-gnu/libevent.a
test/unittests/test_arr: /home/aahan/MY-GIT-REPO/DevOps-Learning/boringssl/ssl/libssl.a
test/unittests/test_arr: /home/aahan/MY-GIT-REPO/DevOps-Learning/boringssl/crypto/libcrypto.a
test/unittests/test_arr: /usr/lib/x86_64-linux-gnu/libz.a
test/unittests/test_arr: test/unittests/CMakeFiles/test_arr.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/aahan/MY-GIT-REPO/NEW/lsquic/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable test_arr"
	cd /home/aahan/MY-GIT-REPO/NEW/lsquic/test/unittests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test_arr.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/unittests/CMakeFiles/test_arr.dir/build: test/unittests/test_arr

.PHONY : test/unittests/CMakeFiles/test_arr.dir/build

test/unittests/CMakeFiles/test_arr.dir/requires: test/unittests/CMakeFiles/test_arr.dir/test_arr.c.o.requires

.PHONY : test/unittests/CMakeFiles/test_arr.dir/requires

test/unittests/CMakeFiles/test_arr.dir/clean:
	cd /home/aahan/MY-GIT-REPO/NEW/lsquic/test/unittests && $(CMAKE_COMMAND) -P CMakeFiles/test_arr.dir/cmake_clean.cmake
.PHONY : test/unittests/CMakeFiles/test_arr.dir/clean

test/unittests/CMakeFiles/test_arr.dir/depend:
	cd /home/aahan/MY-GIT-REPO/NEW/lsquic && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/aahan/MY-GIT-REPO/NEW/lsquic /home/aahan/MY-GIT-REPO/NEW/lsquic/test/unittests /home/aahan/MY-GIT-REPO/NEW/lsquic /home/aahan/MY-GIT-REPO/NEW/lsquic/test/unittests /home/aahan/MY-GIT-REPO/NEW/lsquic/test/unittests/CMakeFiles/test_arr.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/unittests/CMakeFiles/test_arr.dir/depend

