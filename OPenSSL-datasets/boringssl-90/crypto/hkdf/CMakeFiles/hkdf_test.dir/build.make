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
include crypto/hkdf/CMakeFiles/hkdf_test.dir/depend.make

# Include the progress variables for this target.
include crypto/hkdf/CMakeFiles/hkdf_test.dir/progress.make

# Include the compile flags for this target's objects.
include crypto/hkdf/CMakeFiles/hkdf_test.dir/flags.make

crypto/hkdf/CMakeFiles/hkdf_test.dir/hkdf_test.cc.o: crypto/hkdf/CMakeFiles/hkdf_test.dir/flags.make
crypto/hkdf/CMakeFiles/hkdf_test.dir/hkdf_test.cc.o: crypto/hkdf/hkdf_test.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/OPenSSL-datasets/boringssl-90/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object crypto/hkdf/CMakeFiles/hkdf_test.dir/hkdf_test.cc.o"
	cd /root/OPenSSL-datasets/boringssl-90/crypto/hkdf && /usr/bin/clang++-3.8   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/hkdf_test.dir/hkdf_test.cc.o -c /root/OPenSSL-datasets/boringssl-90/crypto/hkdf/hkdf_test.cc

crypto/hkdf/CMakeFiles/hkdf_test.dir/hkdf_test.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/hkdf_test.dir/hkdf_test.cc.i"
	cd /root/OPenSSL-datasets/boringssl-90/crypto/hkdf && /usr/bin/clang++-3.8  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/OPenSSL-datasets/boringssl-90/crypto/hkdf/hkdf_test.cc > CMakeFiles/hkdf_test.dir/hkdf_test.cc.i

crypto/hkdf/CMakeFiles/hkdf_test.dir/hkdf_test.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/hkdf_test.dir/hkdf_test.cc.s"
	cd /root/OPenSSL-datasets/boringssl-90/crypto/hkdf && /usr/bin/clang++-3.8  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/OPenSSL-datasets/boringssl-90/crypto/hkdf/hkdf_test.cc -o CMakeFiles/hkdf_test.dir/hkdf_test.cc.s

crypto/hkdf/CMakeFiles/hkdf_test.dir/hkdf_test.cc.o.requires:

.PHONY : crypto/hkdf/CMakeFiles/hkdf_test.dir/hkdf_test.cc.o.requires

crypto/hkdf/CMakeFiles/hkdf_test.dir/hkdf_test.cc.o.provides: crypto/hkdf/CMakeFiles/hkdf_test.dir/hkdf_test.cc.o.requires
	$(MAKE) -f crypto/hkdf/CMakeFiles/hkdf_test.dir/build.make crypto/hkdf/CMakeFiles/hkdf_test.dir/hkdf_test.cc.o.provides.build
.PHONY : crypto/hkdf/CMakeFiles/hkdf_test.dir/hkdf_test.cc.o.provides

crypto/hkdf/CMakeFiles/hkdf_test.dir/hkdf_test.cc.o.provides.build: crypto/hkdf/CMakeFiles/hkdf_test.dir/hkdf_test.cc.o


# Object files for target hkdf_test
hkdf_test_OBJECTS = \
"CMakeFiles/hkdf_test.dir/hkdf_test.cc.o"

# External object files for target hkdf_test
hkdf_test_EXTERNAL_OBJECTS = \
"/root/OPenSSL-datasets/boringssl-90/crypto/test/CMakeFiles/test_support.dir/file_test.cc.o" \
"/root/OPenSSL-datasets/boringssl-90/crypto/test/CMakeFiles/test_support.dir/malloc.cc.o" \
"/root/OPenSSL-datasets/boringssl-90/crypto/test/CMakeFiles/test_support.dir/test_util.cc.o"

crypto/hkdf/hkdf_test: crypto/hkdf/CMakeFiles/hkdf_test.dir/hkdf_test.cc.o
crypto/hkdf/hkdf_test: crypto/test/CMakeFiles/test_support.dir/file_test.cc.o
crypto/hkdf/hkdf_test: crypto/test/CMakeFiles/test_support.dir/malloc.cc.o
crypto/hkdf/hkdf_test: crypto/test/CMakeFiles/test_support.dir/test_util.cc.o
crypto/hkdf/hkdf_test: crypto/hkdf/CMakeFiles/hkdf_test.dir/build.make
crypto/hkdf/hkdf_test: crypto/libcrypto.a
crypto/hkdf/hkdf_test: crypto/hkdf/CMakeFiles/hkdf_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/root/OPenSSL-datasets/boringssl-90/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable hkdf_test"
	cd /root/OPenSSL-datasets/boringssl-90/crypto/hkdf && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/hkdf_test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
crypto/hkdf/CMakeFiles/hkdf_test.dir/build: crypto/hkdf/hkdf_test

.PHONY : crypto/hkdf/CMakeFiles/hkdf_test.dir/build

crypto/hkdf/CMakeFiles/hkdf_test.dir/requires: crypto/hkdf/CMakeFiles/hkdf_test.dir/hkdf_test.cc.o.requires

.PHONY : crypto/hkdf/CMakeFiles/hkdf_test.dir/requires

crypto/hkdf/CMakeFiles/hkdf_test.dir/clean:
	cd /root/OPenSSL-datasets/boringssl-90/crypto/hkdf && $(CMAKE_COMMAND) -P CMakeFiles/hkdf_test.dir/cmake_clean.cmake
.PHONY : crypto/hkdf/CMakeFiles/hkdf_test.dir/clean

crypto/hkdf/CMakeFiles/hkdf_test.dir/depend:
	cd /root/OPenSSL-datasets/boringssl-90 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/OPenSSL-datasets/boringssl-90 /root/OPenSSL-datasets/boringssl-90/crypto/hkdf /root/OPenSSL-datasets/boringssl-90 /root/OPenSSL-datasets/boringssl-90/crypto/hkdf /root/OPenSSL-datasets/boringssl-90/crypto/hkdf/CMakeFiles/hkdf_test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : crypto/hkdf/CMakeFiles/hkdf_test.dir/depend

