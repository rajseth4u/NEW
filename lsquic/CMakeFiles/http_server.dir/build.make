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
include CMakeFiles/http_server.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/http_server.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/http_server.dir/flags.make

CMakeFiles/http_server.dir/test/http_server.c.o: CMakeFiles/http_server.dir/flags.make
CMakeFiles/http_server.dir/test/http_server.c.o: test/http_server.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/aahan/MY-GIT-REPO/NEW/lsquic/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/http_server.dir/test/http_server.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/http_server.dir/test/http_server.c.o   -c /home/aahan/MY-GIT-REPO/NEW/lsquic/test/http_server.c

CMakeFiles/http_server.dir/test/http_server.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/http_server.dir/test/http_server.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/aahan/MY-GIT-REPO/NEW/lsquic/test/http_server.c > CMakeFiles/http_server.dir/test/http_server.c.i

CMakeFiles/http_server.dir/test/http_server.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/http_server.dir/test/http_server.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/aahan/MY-GIT-REPO/NEW/lsquic/test/http_server.c -o CMakeFiles/http_server.dir/test/http_server.c.s

CMakeFiles/http_server.dir/test/http_server.c.o.requires:

.PHONY : CMakeFiles/http_server.dir/test/http_server.c.o.requires

CMakeFiles/http_server.dir/test/http_server.c.o.provides: CMakeFiles/http_server.dir/test/http_server.c.o.requires
	$(MAKE) -f CMakeFiles/http_server.dir/build.make CMakeFiles/http_server.dir/test/http_server.c.o.provides.build
.PHONY : CMakeFiles/http_server.dir/test/http_server.c.o.provides

CMakeFiles/http_server.dir/test/http_server.c.o.provides.build: CMakeFiles/http_server.dir/test/http_server.c.o


CMakeFiles/http_server.dir/test/prog.c.o: CMakeFiles/http_server.dir/flags.make
CMakeFiles/http_server.dir/test/prog.c.o: test/prog.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/aahan/MY-GIT-REPO/NEW/lsquic/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/http_server.dir/test/prog.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/http_server.dir/test/prog.c.o   -c /home/aahan/MY-GIT-REPO/NEW/lsquic/test/prog.c

CMakeFiles/http_server.dir/test/prog.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/http_server.dir/test/prog.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/aahan/MY-GIT-REPO/NEW/lsquic/test/prog.c > CMakeFiles/http_server.dir/test/prog.c.i

CMakeFiles/http_server.dir/test/prog.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/http_server.dir/test/prog.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/aahan/MY-GIT-REPO/NEW/lsquic/test/prog.c -o CMakeFiles/http_server.dir/test/prog.c.s

CMakeFiles/http_server.dir/test/prog.c.o.requires:

.PHONY : CMakeFiles/http_server.dir/test/prog.c.o.requires

CMakeFiles/http_server.dir/test/prog.c.o.provides: CMakeFiles/http_server.dir/test/prog.c.o.requires
	$(MAKE) -f CMakeFiles/http_server.dir/build.make CMakeFiles/http_server.dir/test/prog.c.o.provides.build
.PHONY : CMakeFiles/http_server.dir/test/prog.c.o.provides

CMakeFiles/http_server.dir/test/prog.c.o.provides.build: CMakeFiles/http_server.dir/test/prog.c.o


CMakeFiles/http_server.dir/test/test_common.c.o: CMakeFiles/http_server.dir/flags.make
CMakeFiles/http_server.dir/test/test_common.c.o: test/test_common.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/aahan/MY-GIT-REPO/NEW/lsquic/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/http_server.dir/test/test_common.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/http_server.dir/test/test_common.c.o   -c /home/aahan/MY-GIT-REPO/NEW/lsquic/test/test_common.c

CMakeFiles/http_server.dir/test/test_common.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/http_server.dir/test/test_common.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/aahan/MY-GIT-REPO/NEW/lsquic/test/test_common.c > CMakeFiles/http_server.dir/test/test_common.c.i

CMakeFiles/http_server.dir/test/test_common.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/http_server.dir/test/test_common.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/aahan/MY-GIT-REPO/NEW/lsquic/test/test_common.c -o CMakeFiles/http_server.dir/test/test_common.c.s

CMakeFiles/http_server.dir/test/test_common.c.o.requires:

.PHONY : CMakeFiles/http_server.dir/test/test_common.c.o.requires

CMakeFiles/http_server.dir/test/test_common.c.o.provides: CMakeFiles/http_server.dir/test/test_common.c.o.requires
	$(MAKE) -f CMakeFiles/http_server.dir/build.make CMakeFiles/http_server.dir/test/test_common.c.o.provides.build
.PHONY : CMakeFiles/http_server.dir/test/test_common.c.o.provides

CMakeFiles/http_server.dir/test/test_common.c.o.provides.build: CMakeFiles/http_server.dir/test/test_common.c.o


CMakeFiles/http_server.dir/test/test_cert.c.o: CMakeFiles/http_server.dir/flags.make
CMakeFiles/http_server.dir/test/test_cert.c.o: test/test_cert.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/aahan/MY-GIT-REPO/NEW/lsquic/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object CMakeFiles/http_server.dir/test/test_cert.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/http_server.dir/test/test_cert.c.o   -c /home/aahan/MY-GIT-REPO/NEW/lsquic/test/test_cert.c

CMakeFiles/http_server.dir/test/test_cert.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/http_server.dir/test/test_cert.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/aahan/MY-GIT-REPO/NEW/lsquic/test/test_cert.c > CMakeFiles/http_server.dir/test/test_cert.c.i

CMakeFiles/http_server.dir/test/test_cert.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/http_server.dir/test/test_cert.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/aahan/MY-GIT-REPO/NEW/lsquic/test/test_cert.c -o CMakeFiles/http_server.dir/test/test_cert.c.s

CMakeFiles/http_server.dir/test/test_cert.c.o.requires:

.PHONY : CMakeFiles/http_server.dir/test/test_cert.c.o.requires

CMakeFiles/http_server.dir/test/test_cert.c.o.provides: CMakeFiles/http_server.dir/test/test_cert.c.o.requires
	$(MAKE) -f CMakeFiles/http_server.dir/build.make CMakeFiles/http_server.dir/test/test_cert.c.o.provides.build
.PHONY : CMakeFiles/http_server.dir/test/test_cert.c.o.provides

CMakeFiles/http_server.dir/test/test_cert.c.o.provides.build: CMakeFiles/http_server.dir/test/test_cert.c.o


# Object files for target http_server
http_server_OBJECTS = \
"CMakeFiles/http_server.dir/test/http_server.c.o" \
"CMakeFiles/http_server.dir/test/prog.c.o" \
"CMakeFiles/http_server.dir/test/test_common.c.o" \
"CMakeFiles/http_server.dir/test/test_cert.c.o"

# External object files for target http_server
http_server_EXTERNAL_OBJECTS =

http_server: CMakeFiles/http_server.dir/test/http_server.c.o
http_server: CMakeFiles/http_server.dir/test/prog.c.o
http_server: CMakeFiles/http_server.dir/test/test_common.c.o
http_server: CMakeFiles/http_server.dir/test/test_cert.c.o
http_server: CMakeFiles/http_server.dir/build.make
http_server: src/liblsquic/liblsquic.a
http_server: /usr/lib/x86_64-linux-gnu/libevent.a
http_server: /home/aahan/MY-GIT-REPO/DevOps-Learning/boringssl/ssl/libssl.a
http_server: /home/aahan/MY-GIT-REPO/DevOps-Learning/boringssl/crypto/libcrypto.a
http_server: /usr/lib/x86_64-linux-gnu/libz.a
http_server: CMakeFiles/http_server.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/aahan/MY-GIT-REPO/NEW/lsquic/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking C executable http_server"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/http_server.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/http_server.dir/build: http_server

.PHONY : CMakeFiles/http_server.dir/build

CMakeFiles/http_server.dir/requires: CMakeFiles/http_server.dir/test/http_server.c.o.requires
CMakeFiles/http_server.dir/requires: CMakeFiles/http_server.dir/test/prog.c.o.requires
CMakeFiles/http_server.dir/requires: CMakeFiles/http_server.dir/test/test_common.c.o.requires
CMakeFiles/http_server.dir/requires: CMakeFiles/http_server.dir/test/test_cert.c.o.requires

.PHONY : CMakeFiles/http_server.dir/requires

CMakeFiles/http_server.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/http_server.dir/cmake_clean.cmake
.PHONY : CMakeFiles/http_server.dir/clean

CMakeFiles/http_server.dir/depend:
	cd /home/aahan/MY-GIT-REPO/NEW/lsquic && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/aahan/MY-GIT-REPO/NEW/lsquic /home/aahan/MY-GIT-REPO/NEW/lsquic /home/aahan/MY-GIT-REPO/NEW/lsquic /home/aahan/MY-GIT-REPO/NEW/lsquic /home/aahan/MY-GIT-REPO/NEW/lsquic/CMakeFiles/http_server.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/http_server.dir/depend

