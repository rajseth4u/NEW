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
CMAKE_SOURCE_DIR = /home/aahan/LSQUIC-GIT-DEMO/lsquic

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/aahan/LSQUIC-GIT-DEMO/lsquic

# Include any dependencies generated for this target.
include test/unittests/CMakeFiles/test_frame_chop.dir/depend.make

# Include the progress variables for this target.
include test/unittests/CMakeFiles/test_frame_chop.dir/progress.make

# Include the compile flags for this target's objects.
include test/unittests/CMakeFiles/test_frame_chop.dir/flags.make

test/unittests/CMakeFiles/test_frame_chop.dir/test_frame_chop.c.o: test/unittests/CMakeFiles/test_frame_chop.dir/flags.make
test/unittests/CMakeFiles/test_frame_chop.dir/test_frame_chop.c.o: test/unittests/test_frame_chop.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/aahan/LSQUIC-GIT-DEMO/lsquic/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object test/unittests/CMakeFiles/test_frame_chop.dir/test_frame_chop.c.o"
	cd /home/aahan/LSQUIC-GIT-DEMO/lsquic/test/unittests && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/test_frame_chop.dir/test_frame_chop.c.o   -c /home/aahan/LSQUIC-GIT-DEMO/lsquic/test/unittests/test_frame_chop.c

test/unittests/CMakeFiles/test_frame_chop.dir/test_frame_chop.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/test_frame_chop.dir/test_frame_chop.c.i"
	cd /home/aahan/LSQUIC-GIT-DEMO/lsquic/test/unittests && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/aahan/LSQUIC-GIT-DEMO/lsquic/test/unittests/test_frame_chop.c > CMakeFiles/test_frame_chop.dir/test_frame_chop.c.i

test/unittests/CMakeFiles/test_frame_chop.dir/test_frame_chop.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/test_frame_chop.dir/test_frame_chop.c.s"
	cd /home/aahan/LSQUIC-GIT-DEMO/lsquic/test/unittests && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/aahan/LSQUIC-GIT-DEMO/lsquic/test/unittests/test_frame_chop.c -o CMakeFiles/test_frame_chop.dir/test_frame_chop.c.s

test/unittests/CMakeFiles/test_frame_chop.dir/test_frame_chop.c.o.requires:

.PHONY : test/unittests/CMakeFiles/test_frame_chop.dir/test_frame_chop.c.o.requires

test/unittests/CMakeFiles/test_frame_chop.dir/test_frame_chop.c.o.provides: test/unittests/CMakeFiles/test_frame_chop.dir/test_frame_chop.c.o.requires
	$(MAKE) -f test/unittests/CMakeFiles/test_frame_chop.dir/build.make test/unittests/CMakeFiles/test_frame_chop.dir/test_frame_chop.c.o.provides.build
.PHONY : test/unittests/CMakeFiles/test_frame_chop.dir/test_frame_chop.c.o.provides

test/unittests/CMakeFiles/test_frame_chop.dir/test_frame_chop.c.o.provides.build: test/unittests/CMakeFiles/test_frame_chop.dir/test_frame_chop.c.o


# Object files for target test_frame_chop
test_frame_chop_OBJECTS = \
"CMakeFiles/test_frame_chop.dir/test_frame_chop.c.o"

# External object files for target test_frame_chop
test_frame_chop_EXTERNAL_OBJECTS =

test/unittests/test_frame_chop: test/unittests/CMakeFiles/test_frame_chop.dir/test_frame_chop.c.o
test/unittests/test_frame_chop: test/unittests/CMakeFiles/test_frame_chop.dir/build.make
test/unittests/test_frame_chop: src/liblsquic/liblsquic.a
test/unittests/test_frame_chop: /usr/lib/x86_64-linux-gnu/libevent.a
test/unittests/test_frame_chop: /home/aahan/MY-GIT-REPO/DevOps-Learning/boringssl/ssl/libssl.a
test/unittests/test_frame_chop: /home/aahan/MY-GIT-REPO/DevOps-Learning/boringssl/crypto/libcrypto.a
test/unittests/test_frame_chop: /usr/lib/x86_64-linux-gnu/libz.a
test/unittests/test_frame_chop: test/unittests/CMakeFiles/test_frame_chop.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/aahan/LSQUIC-GIT-DEMO/lsquic/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable test_frame_chop"
	cd /home/aahan/LSQUIC-GIT-DEMO/lsquic/test/unittests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test_frame_chop.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/unittests/CMakeFiles/test_frame_chop.dir/build: test/unittests/test_frame_chop

.PHONY : test/unittests/CMakeFiles/test_frame_chop.dir/build

test/unittests/CMakeFiles/test_frame_chop.dir/requires: test/unittests/CMakeFiles/test_frame_chop.dir/test_frame_chop.c.o.requires

.PHONY : test/unittests/CMakeFiles/test_frame_chop.dir/requires

test/unittests/CMakeFiles/test_frame_chop.dir/clean:
	cd /home/aahan/LSQUIC-GIT-DEMO/lsquic/test/unittests && $(CMAKE_COMMAND) -P CMakeFiles/test_frame_chop.dir/cmake_clean.cmake
.PHONY : test/unittests/CMakeFiles/test_frame_chop.dir/clean

test/unittests/CMakeFiles/test_frame_chop.dir/depend:
	cd /home/aahan/LSQUIC-GIT-DEMO/lsquic && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/aahan/LSQUIC-GIT-DEMO/lsquic /home/aahan/LSQUIC-GIT-DEMO/lsquic/test/unittests /home/aahan/LSQUIC-GIT-DEMO/lsquic /home/aahan/LSQUIC-GIT-DEMO/lsquic/test/unittests /home/aahan/LSQUIC-GIT-DEMO/lsquic/test/unittests/CMakeFiles/test_frame_chop.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/unittests/CMakeFiles/test_frame_chop.dir/depend

