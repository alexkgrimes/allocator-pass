# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.11

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
CMAKE_SOURCE_DIR = /home/akg434/noelle/examples/passes/allocator-pass

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/akg434/noelle/examples/passes/allocator-pass/build

# Utility rule file for install-CAT-stripped.

# Include the progress variables for this target.
include src/CMakeFiles/install-CAT-stripped.dir/progress.make

src/CMakeFiles/install-CAT-stripped:
	cd /home/akg434/noelle/examples/passes/allocator-pass/build/src && /usr/bin/cmake -DCMAKE_INSTALL_COMPONENT="CAT" -DCMAKE_INSTALL_DO_STRIP=1 -P /home/akg434/noelle/examples/passes/allocator-pass/build/cmake_install.cmake

install-CAT-stripped: src/CMakeFiles/install-CAT-stripped
install-CAT-stripped: src/CMakeFiles/install-CAT-stripped.dir/build.make

.PHONY : install-CAT-stripped

# Rule to build all files generated by this target.
src/CMakeFiles/install-CAT-stripped.dir/build: install-CAT-stripped

.PHONY : src/CMakeFiles/install-CAT-stripped.dir/build

src/CMakeFiles/install-CAT-stripped.dir/clean:
	cd /home/akg434/noelle/examples/passes/allocator-pass/build/src && $(CMAKE_COMMAND) -P CMakeFiles/install-CAT-stripped.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/install-CAT-stripped.dir/clean

src/CMakeFiles/install-CAT-stripped.dir/depend:
	cd /home/akg434/noelle/examples/passes/allocator-pass/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/akg434/noelle/examples/passes/allocator-pass /home/akg434/noelle/examples/passes/allocator-pass/src /home/akg434/noelle/examples/passes/allocator-pass/build /home/akg434/noelle/examples/passes/allocator-pass/build/src /home/akg434/noelle/examples/passes/allocator-pass/build/src/CMakeFiles/install-CAT-stripped.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/CMakeFiles/install-CAT-stripped.dir/depend

