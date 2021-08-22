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
include crypto/obj/CMakeFiles/obj.dir/depend.make

# Include the progress variables for this target.
include crypto/obj/CMakeFiles/obj.dir/progress.make

# Include the compile flags for this target's objects.
include crypto/obj/CMakeFiles/obj.dir/flags.make

crypto/obj/CMakeFiles/obj.dir/obj.c.o: crypto/obj/CMakeFiles/obj.dir/flags.make
crypto/obj/CMakeFiles/obj.dir/obj.c.o: crypto/obj/obj.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/OPenSSL-datasets/boringssl-90/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object crypto/obj/CMakeFiles/obj.dir/obj.c.o"
	cd /root/OPenSSL-datasets/boringssl-90/crypto/obj && /usr/bin/clang-3.8  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/obj.dir/obj.c.o   -c /root/OPenSSL-datasets/boringssl-90/crypto/obj/obj.c

crypto/obj/CMakeFiles/obj.dir/obj.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/obj.dir/obj.c.i"
	cd /root/OPenSSL-datasets/boringssl-90/crypto/obj && /usr/bin/clang-3.8  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /root/OPenSSL-datasets/boringssl-90/crypto/obj/obj.c > CMakeFiles/obj.dir/obj.c.i

crypto/obj/CMakeFiles/obj.dir/obj.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/obj.dir/obj.c.s"
	cd /root/OPenSSL-datasets/boringssl-90/crypto/obj && /usr/bin/clang-3.8  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /root/OPenSSL-datasets/boringssl-90/crypto/obj/obj.c -o CMakeFiles/obj.dir/obj.c.s

crypto/obj/CMakeFiles/obj.dir/obj.c.o.requires:

.PHONY : crypto/obj/CMakeFiles/obj.dir/obj.c.o.requires

crypto/obj/CMakeFiles/obj.dir/obj.c.o.provides: crypto/obj/CMakeFiles/obj.dir/obj.c.o.requires
	$(MAKE) -f crypto/obj/CMakeFiles/obj.dir/build.make crypto/obj/CMakeFiles/obj.dir/obj.c.o.provides.build
.PHONY : crypto/obj/CMakeFiles/obj.dir/obj.c.o.provides

crypto/obj/CMakeFiles/obj.dir/obj.c.o.provides.build: crypto/obj/CMakeFiles/obj.dir/obj.c.o


crypto/obj/CMakeFiles/obj.dir/obj_xref.c.o: crypto/obj/CMakeFiles/obj.dir/flags.make
crypto/obj/CMakeFiles/obj.dir/obj_xref.c.o: crypto/obj/obj_xref.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/OPenSSL-datasets/boringssl-90/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object crypto/obj/CMakeFiles/obj.dir/obj_xref.c.o"
	cd /root/OPenSSL-datasets/boringssl-90/crypto/obj && /usr/bin/clang-3.8  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/obj.dir/obj_xref.c.o   -c /root/OPenSSL-datasets/boringssl-90/crypto/obj/obj_xref.c

crypto/obj/CMakeFiles/obj.dir/obj_xref.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/obj.dir/obj_xref.c.i"
	cd /root/OPenSSL-datasets/boringssl-90/crypto/obj && /usr/bin/clang-3.8  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /root/OPenSSL-datasets/boringssl-90/crypto/obj/obj_xref.c > CMakeFiles/obj.dir/obj_xref.c.i

crypto/obj/CMakeFiles/obj.dir/obj_xref.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/obj.dir/obj_xref.c.s"
	cd /root/OPenSSL-datasets/boringssl-90/crypto/obj && /usr/bin/clang-3.8  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /root/OPenSSL-datasets/boringssl-90/crypto/obj/obj_xref.c -o CMakeFiles/obj.dir/obj_xref.c.s

crypto/obj/CMakeFiles/obj.dir/obj_xref.c.o.requires:

.PHONY : crypto/obj/CMakeFiles/obj.dir/obj_xref.c.o.requires

crypto/obj/CMakeFiles/obj.dir/obj_xref.c.o.provides: crypto/obj/CMakeFiles/obj.dir/obj_xref.c.o.requires
	$(MAKE) -f crypto/obj/CMakeFiles/obj.dir/build.make crypto/obj/CMakeFiles/obj.dir/obj_xref.c.o.provides.build
.PHONY : crypto/obj/CMakeFiles/obj.dir/obj_xref.c.o.provides

crypto/obj/CMakeFiles/obj.dir/obj_xref.c.o.provides.build: crypto/obj/CMakeFiles/obj.dir/obj_xref.c.o


obj: crypto/obj/CMakeFiles/obj.dir/obj.c.o
obj: crypto/obj/CMakeFiles/obj.dir/obj_xref.c.o
obj: crypto/obj/CMakeFiles/obj.dir/build.make

.PHONY : obj

# Rule to build all files generated by this target.
crypto/obj/CMakeFiles/obj.dir/build: obj

.PHONY : crypto/obj/CMakeFiles/obj.dir/build

crypto/obj/CMakeFiles/obj.dir/requires: crypto/obj/CMakeFiles/obj.dir/obj.c.o.requires
crypto/obj/CMakeFiles/obj.dir/requires: crypto/obj/CMakeFiles/obj.dir/obj_xref.c.o.requires

.PHONY : crypto/obj/CMakeFiles/obj.dir/requires

crypto/obj/CMakeFiles/obj.dir/clean:
	cd /root/OPenSSL-datasets/boringssl-90/crypto/obj && $(CMAKE_COMMAND) -P CMakeFiles/obj.dir/cmake_clean.cmake
.PHONY : crypto/obj/CMakeFiles/obj.dir/clean

crypto/obj/CMakeFiles/obj.dir/depend:
	cd /root/OPenSSL-datasets/boringssl-90 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/OPenSSL-datasets/boringssl-90 /root/OPenSSL-datasets/boringssl-90/crypto/obj /root/OPenSSL-datasets/boringssl-90 /root/OPenSSL-datasets/boringssl-90/crypto/obj /root/OPenSSL-datasets/boringssl-90/crypto/obj/CMakeFiles/obj.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : crypto/obj/CMakeFiles/obj.dir/depend

