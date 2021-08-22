# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

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
CMAKE_SOURCE_DIR = /root/OPenSSL-datasets/boringssl-90

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /root/OPenSSL-datasets/boringssl-90

# Include any dependencies generated for this target.
include crypto/poly1305/CMakeFiles/poly1305.dir/depend.make

# Include the progress variables for this target.
include crypto/poly1305/CMakeFiles/poly1305.dir/progress.make

# Include the compile flags for this target's objects.
include crypto/poly1305/CMakeFiles/poly1305.dir/flags.make

crypto/poly1305/CMakeFiles/poly1305.dir/poly1305.c.o: crypto/poly1305/CMakeFiles/poly1305.dir/flags.make
crypto/poly1305/CMakeFiles/poly1305.dir/poly1305.c.o: crypto/poly1305/poly1305.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/OPenSSL-datasets/boringssl-90/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object crypto/poly1305/CMakeFiles/poly1305.dir/poly1305.c.o"
	cd /root/OPenSSL-datasets/boringssl-90/crypto/poly1305 && /usr/bin/clang-3.8  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/poly1305.dir/poly1305.c.o   -c /root/OPenSSL-datasets/boringssl-90/crypto/poly1305/poly1305.c

crypto/poly1305/CMakeFiles/poly1305.dir/poly1305.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/poly1305.dir/poly1305.c.i"
	cd /root/OPenSSL-datasets/boringssl-90/crypto/poly1305 && /usr/bin/clang-3.8  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /root/OPenSSL-datasets/boringssl-90/crypto/poly1305/poly1305.c > CMakeFiles/poly1305.dir/poly1305.c.i

crypto/poly1305/CMakeFiles/poly1305.dir/poly1305.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/poly1305.dir/poly1305.c.s"
	cd /root/OPenSSL-datasets/boringssl-90/crypto/poly1305 && /usr/bin/clang-3.8  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /root/OPenSSL-datasets/boringssl-90/crypto/poly1305/poly1305.c -o CMakeFiles/poly1305.dir/poly1305.c.s

crypto/poly1305/CMakeFiles/poly1305.dir/poly1305.c.o.requires:

.PHONY : crypto/poly1305/CMakeFiles/poly1305.dir/poly1305.c.o.requires

crypto/poly1305/CMakeFiles/poly1305.dir/poly1305.c.o.provides: crypto/poly1305/CMakeFiles/poly1305.dir/poly1305.c.o.requires
	$(MAKE) -f crypto/poly1305/CMakeFiles/poly1305.dir/build.make crypto/poly1305/CMakeFiles/poly1305.dir/poly1305.c.o.provides.build
.PHONY : crypto/poly1305/CMakeFiles/poly1305.dir/poly1305.c.o.provides

crypto/poly1305/CMakeFiles/poly1305.dir/poly1305.c.o.provides.build: crypto/poly1305/CMakeFiles/poly1305.dir/poly1305.c.o


crypto/poly1305/CMakeFiles/poly1305.dir/poly1305_arm.c.o: crypto/poly1305/CMakeFiles/poly1305.dir/flags.make
crypto/poly1305/CMakeFiles/poly1305.dir/poly1305_arm.c.o: crypto/poly1305/poly1305_arm.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/OPenSSL-datasets/boringssl-90/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object crypto/poly1305/CMakeFiles/poly1305.dir/poly1305_arm.c.o"
	cd /root/OPenSSL-datasets/boringssl-90/crypto/poly1305 && /usr/bin/clang-3.8  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/poly1305.dir/poly1305_arm.c.o   -c /root/OPenSSL-datasets/boringssl-90/crypto/poly1305/poly1305_arm.c

crypto/poly1305/CMakeFiles/poly1305.dir/poly1305_arm.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/poly1305.dir/poly1305_arm.c.i"
	cd /root/OPenSSL-datasets/boringssl-90/crypto/poly1305 && /usr/bin/clang-3.8  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /root/OPenSSL-datasets/boringssl-90/crypto/poly1305/poly1305_arm.c > CMakeFiles/poly1305.dir/poly1305_arm.c.i

crypto/poly1305/CMakeFiles/poly1305.dir/poly1305_arm.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/poly1305.dir/poly1305_arm.c.s"
	cd /root/OPenSSL-datasets/boringssl-90/crypto/poly1305 && /usr/bin/clang-3.8  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /root/OPenSSL-datasets/boringssl-90/crypto/poly1305/poly1305_arm.c -o CMakeFiles/poly1305.dir/poly1305_arm.c.s

crypto/poly1305/CMakeFiles/poly1305.dir/poly1305_arm.c.o.requires:

.PHONY : crypto/poly1305/CMakeFiles/poly1305.dir/poly1305_arm.c.o.requires

crypto/poly1305/CMakeFiles/poly1305.dir/poly1305_arm.c.o.provides: crypto/poly1305/CMakeFiles/poly1305.dir/poly1305_arm.c.o.requires
	$(MAKE) -f crypto/poly1305/CMakeFiles/poly1305.dir/build.make crypto/poly1305/CMakeFiles/poly1305.dir/poly1305_arm.c.o.provides.build
.PHONY : crypto/poly1305/CMakeFiles/poly1305.dir/poly1305_arm.c.o.provides

crypto/poly1305/CMakeFiles/poly1305.dir/poly1305_arm.c.o.provides.build: crypto/poly1305/CMakeFiles/poly1305.dir/poly1305_arm.c.o


crypto/poly1305/CMakeFiles/poly1305.dir/poly1305_vec.c.o: crypto/poly1305/CMakeFiles/poly1305.dir/flags.make
crypto/poly1305/CMakeFiles/poly1305.dir/poly1305_vec.c.o: crypto/poly1305/poly1305_vec.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/OPenSSL-datasets/boringssl-90/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object crypto/poly1305/CMakeFiles/poly1305.dir/poly1305_vec.c.o"
	cd /root/OPenSSL-datasets/boringssl-90/crypto/poly1305 && /usr/bin/clang-3.8  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/poly1305.dir/poly1305_vec.c.o   -c /root/OPenSSL-datasets/boringssl-90/crypto/poly1305/poly1305_vec.c

crypto/poly1305/CMakeFiles/poly1305.dir/poly1305_vec.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/poly1305.dir/poly1305_vec.c.i"
	cd /root/OPenSSL-datasets/boringssl-90/crypto/poly1305 && /usr/bin/clang-3.8  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /root/OPenSSL-datasets/boringssl-90/crypto/poly1305/poly1305_vec.c > CMakeFiles/poly1305.dir/poly1305_vec.c.i

crypto/poly1305/CMakeFiles/poly1305.dir/poly1305_vec.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/poly1305.dir/poly1305_vec.c.s"
	cd /root/OPenSSL-datasets/boringssl-90/crypto/poly1305 && /usr/bin/clang-3.8  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /root/OPenSSL-datasets/boringssl-90/crypto/poly1305/poly1305_vec.c -o CMakeFiles/poly1305.dir/poly1305_vec.c.s

crypto/poly1305/CMakeFiles/poly1305.dir/poly1305_vec.c.o.requires:

.PHONY : crypto/poly1305/CMakeFiles/poly1305.dir/poly1305_vec.c.o.requires

crypto/poly1305/CMakeFiles/poly1305.dir/poly1305_vec.c.o.provides: crypto/poly1305/CMakeFiles/poly1305.dir/poly1305_vec.c.o.requires
	$(MAKE) -f crypto/poly1305/CMakeFiles/poly1305.dir/build.make crypto/poly1305/CMakeFiles/poly1305.dir/poly1305_vec.c.o.provides.build
.PHONY : crypto/poly1305/CMakeFiles/poly1305.dir/poly1305_vec.c.o.provides

crypto/poly1305/CMakeFiles/poly1305.dir/poly1305_vec.c.o.provides.build: crypto/poly1305/CMakeFiles/poly1305.dir/poly1305_vec.c.o


poly1305: crypto/poly1305/CMakeFiles/poly1305.dir/poly1305.c.o
poly1305: crypto/poly1305/CMakeFiles/poly1305.dir/poly1305_arm.c.o
poly1305: crypto/poly1305/CMakeFiles/poly1305.dir/poly1305_vec.c.o
poly1305: crypto/poly1305/CMakeFiles/poly1305.dir/build.make

.PHONY : poly1305

# Rule to build all files generated by this target.
crypto/poly1305/CMakeFiles/poly1305.dir/build: poly1305

.PHONY : crypto/poly1305/CMakeFiles/poly1305.dir/build

crypto/poly1305/CMakeFiles/poly1305.dir/requires: crypto/poly1305/CMakeFiles/poly1305.dir/poly1305.c.o.requires
crypto/poly1305/CMakeFiles/poly1305.dir/requires: crypto/poly1305/CMakeFiles/poly1305.dir/poly1305_arm.c.o.requires
crypto/poly1305/CMakeFiles/poly1305.dir/requires: crypto/poly1305/CMakeFiles/poly1305.dir/poly1305_vec.c.o.requires

.PHONY : crypto/poly1305/CMakeFiles/poly1305.dir/requires

crypto/poly1305/CMakeFiles/poly1305.dir/clean:
	cd /root/OPenSSL-datasets/boringssl-90/crypto/poly1305 && $(CMAKE_COMMAND) -P CMakeFiles/poly1305.dir/cmake_clean.cmake
.PHONY : crypto/poly1305/CMakeFiles/poly1305.dir/clean

crypto/poly1305/CMakeFiles/poly1305.dir/depend:
	cd /root/OPenSSL-datasets/boringssl-90 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/OPenSSL-datasets/boringssl-90 /root/OPenSSL-datasets/boringssl-90/crypto/poly1305 /root/OPenSSL-datasets/boringssl-90 /root/OPenSSL-datasets/boringssl-90/crypto/poly1305 /root/OPenSSL-datasets/boringssl-90/crypto/poly1305/CMakeFiles/poly1305.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : crypto/poly1305/CMakeFiles/poly1305.dir/depend

