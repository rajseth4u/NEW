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
include CMakeFiles/echo_client.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/echo_client.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/echo_client.dir/flags.make

CMakeFiles/echo_client.dir/test/echo_client.c.o: CMakeFiles/echo_client.dir/flags.make
CMakeFiles/echo_client.dir/test/echo_client.c.o: test/echo_client.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/aahan/LSQUIC-GIT-DEMO/lsquic/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/echo_client.dir/test/echo_client.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/echo_client.dir/test/echo_client.c.o   -c /home/aahan/LSQUIC-GIT-DEMO/lsquic/test/echo_client.c

CMakeFiles/echo_client.dir/test/echo_client.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/echo_client.dir/test/echo_client.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/aahan/LSQUIC-GIT-DEMO/lsquic/test/echo_client.c > CMakeFiles/echo_client.dir/test/echo_client.c.i

CMakeFiles/echo_client.dir/test/echo_client.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/echo_client.dir/test/echo_client.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/aahan/LSQUIC-GIT-DEMO/lsquic/test/echo_client.c -o CMakeFiles/echo_client.dir/test/echo_client.c.s

CMakeFiles/echo_client.dir/test/echo_client.c.o.requires:

.PHONY : CMakeFiles/echo_client.dir/test/echo_client.c.o.requires

CMakeFiles/echo_client.dir/test/echo_client.c.o.provides: CMakeFiles/echo_client.dir/test/echo_client.c.o.requires
	$(MAKE) -f CMakeFiles/echo_client.dir/build.make CMakeFiles/echo_client.dir/test/echo_client.c.o.provides.build
.PHONY : CMakeFiles/echo_client.dir/test/echo_client.c.o.provides

CMakeFiles/echo_client.dir/test/echo_client.c.o.provides.build: CMakeFiles/echo_client.dir/test/echo_client.c.o


CMakeFiles/echo_client.dir/test/prog.c.o: CMakeFiles/echo_client.dir/flags.make
CMakeFiles/echo_client.dir/test/prog.c.o: test/prog.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/aahan/LSQUIC-GIT-DEMO/lsquic/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/echo_client.dir/test/prog.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/echo_client.dir/test/prog.c.o   -c /home/aahan/LSQUIC-GIT-DEMO/lsquic/test/prog.c

CMakeFiles/echo_client.dir/test/prog.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/echo_client.dir/test/prog.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/aahan/LSQUIC-GIT-DEMO/lsquic/test/prog.c > CMakeFiles/echo_client.dir/test/prog.c.i

CMakeFiles/echo_client.dir/test/prog.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/echo_client.dir/test/prog.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/aahan/LSQUIC-GIT-DEMO/lsquic/test/prog.c -o CMakeFiles/echo_client.dir/test/prog.c.s

CMakeFiles/echo_client.dir/test/prog.c.o.requires:

.PHONY : CMakeFiles/echo_client.dir/test/prog.c.o.requires

CMakeFiles/echo_client.dir/test/prog.c.o.provides: CMakeFiles/echo_client.dir/test/prog.c.o.requires
	$(MAKE) -f CMakeFiles/echo_client.dir/build.make CMakeFiles/echo_client.dir/test/prog.c.o.provides.build
.PHONY : CMakeFiles/echo_client.dir/test/prog.c.o.provides

CMakeFiles/echo_client.dir/test/prog.c.o.provides.build: CMakeFiles/echo_client.dir/test/prog.c.o


CMakeFiles/echo_client.dir/test/test_common.c.o: CMakeFiles/echo_client.dir/flags.make
CMakeFiles/echo_client.dir/test/test_common.c.o: test/test_common.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/aahan/LSQUIC-GIT-DEMO/lsquic/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/echo_client.dir/test/test_common.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/echo_client.dir/test/test_common.c.o   -c /home/aahan/LSQUIC-GIT-DEMO/lsquic/test/test_common.c

CMakeFiles/echo_client.dir/test/test_common.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/echo_client.dir/test/test_common.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/aahan/LSQUIC-GIT-DEMO/lsquic/test/test_common.c > CMakeFiles/echo_client.dir/test/test_common.c.i

CMakeFiles/echo_client.dir/test/test_common.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/echo_client.dir/test/test_common.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/aahan/LSQUIC-GIT-DEMO/lsquic/test/test_common.c -o CMakeFiles/echo_client.dir/test/test_common.c.s

CMakeFiles/echo_client.dir/test/test_common.c.o.requires:

.PHONY : CMakeFiles/echo_client.dir/test/test_common.c.o.requires

CMakeFiles/echo_client.dir/test/test_common.c.o.provides: CMakeFiles/echo_client.dir/test/test_common.c.o.requires
	$(MAKE) -f CMakeFiles/echo_client.dir/build.make CMakeFiles/echo_client.dir/test/test_common.c.o.provides.build
.PHONY : CMakeFiles/echo_client.dir/test/test_common.c.o.provides

CMakeFiles/echo_client.dir/test/test_common.c.o.provides.build: CMakeFiles/echo_client.dir/test/test_common.c.o


CMakeFiles/echo_client.dir/test/test_cert.c.o: CMakeFiles/echo_client.dir/flags.make
CMakeFiles/echo_client.dir/test/test_cert.c.o: test/test_cert.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/aahan/LSQUIC-GIT-DEMO/lsquic/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object CMakeFiles/echo_client.dir/test/test_cert.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/echo_client.dir/test/test_cert.c.o   -c /home/aahan/LSQUIC-GIT-DEMO/lsquic/test/test_cert.c

CMakeFiles/echo_client.dir/test/test_cert.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/echo_client.dir/test/test_cert.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/aahan/LSQUIC-GIT-DEMO/lsquic/test/test_cert.c > CMakeFiles/echo_client.dir/test/test_cert.c.i

CMakeFiles/echo_client.dir/test/test_cert.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/echo_client.dir/test/test_cert.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/aahan/LSQUIC-GIT-DEMO/lsquic/test/test_cert.c -o CMakeFiles/echo_client.dir/test/test_cert.c.s

CMakeFiles/echo_client.dir/test/test_cert.c.o.requires:

.PHONY : CMakeFiles/echo_client.dir/test/test_cert.c.o.requires

CMakeFiles/echo_client.dir/test/test_cert.c.o.provides: CMakeFiles/echo_client.dir/test/test_cert.c.o.requires
	$(MAKE) -f CMakeFiles/echo_client.dir/build.make CMakeFiles/echo_client.dir/test/test_cert.c.o.provides.build
.PHONY : CMakeFiles/echo_client.dir/test/test_cert.c.o.provides

CMakeFiles/echo_client.dir/test/test_cert.c.o.provides.build: CMakeFiles/echo_client.dir/test/test_cert.c.o


# Object files for target echo_client
echo_client_OBJECTS = \
"CMakeFiles/echo_client.dir/test/echo_client.c.o" \
"CMakeFiles/echo_client.dir/test/prog.c.o" \
"CMakeFiles/echo_client.dir/test/test_common.c.o" \
"CMakeFiles/echo_client.dir/test/test_cert.c.o"

# External object files for target echo_client
echo_client_EXTERNAL_OBJECTS =

echo_client: CMakeFiles/echo_client.dir/test/echo_client.c.o
echo_client: CMakeFiles/echo_client.dir/test/prog.c.o
echo_client: CMakeFiles/echo_client.dir/test/test_common.c.o
echo_client: CMakeFiles/echo_client.dir/test/test_cert.c.o
echo_client: CMakeFiles/echo_client.dir/build.make
echo_client: src/liblsquic/liblsquic.a
echo_client: /usr/lib/x86_64-linux-gnu/libevent.a
echo_client: /home/aahan/MY-GIT-REPO/DevOps-Learning/boringssl/ssl/libssl.a
echo_client: /home/aahan/MY-GIT-REPO/DevOps-Learning/boringssl/crypto/libcrypto.a
echo_client: /usr/lib/x86_64-linux-gnu/libz.a
echo_client: CMakeFiles/echo_client.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/aahan/LSQUIC-GIT-DEMO/lsquic/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking C executable echo_client"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/echo_client.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/echo_client.dir/build: echo_client

.PHONY : CMakeFiles/echo_client.dir/build

CMakeFiles/echo_client.dir/requires: CMakeFiles/echo_client.dir/test/echo_client.c.o.requires
CMakeFiles/echo_client.dir/requires: CMakeFiles/echo_client.dir/test/prog.c.o.requires
CMakeFiles/echo_client.dir/requires: CMakeFiles/echo_client.dir/test/test_common.c.o.requires
CMakeFiles/echo_client.dir/requires: CMakeFiles/echo_client.dir/test/test_cert.c.o.requires

.PHONY : CMakeFiles/echo_client.dir/requires

CMakeFiles/echo_client.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/echo_client.dir/cmake_clean.cmake
.PHONY : CMakeFiles/echo_client.dir/clean

CMakeFiles/echo_client.dir/depend:
	cd /home/aahan/LSQUIC-GIT-DEMO/lsquic && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/aahan/LSQUIC-GIT-DEMO/lsquic /home/aahan/LSQUIC-GIT-DEMO/lsquic /home/aahan/LSQUIC-GIT-DEMO/lsquic /home/aahan/LSQUIC-GIT-DEMO/lsquic /home/aahan/LSQUIC-GIT-DEMO/lsquic/CMakeFiles/echo_client.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/echo_client.dir/depend

