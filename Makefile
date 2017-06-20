# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.8

# Default target executed when no arguments are given to make.
default_target: all

.PHONY : default_target

# Allow only one "make -f Makefile2" at a time, but pass parallelism.
.NOTPARALLEL:


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
CMAKE_COMMAND = /nfs/zfs-student-6/users/meckhard/.brew/Cellar/cmake/3.8.2/bin/cmake

# The command to remove a file.
RM = /nfs/zfs-student-6/users/meckhard/.brew/Cellar/cmake/3.8.2/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /nfs/zfs-student-6/users/meckhard/Wethinkcode/snek

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /nfs/zfs-student-6/users/meckhard/Wethinkcode/snek

#=============================================================================
# Targets provided globally by CMake.

# Special rule for the target rebuild_cache
rebuild_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake to regenerate build system..."
	/nfs/zfs-student-6/users/meckhard/.brew/Cellar/cmake/3.8.2/bin/cmake -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : rebuild_cache

# Special rule for the target rebuild_cache
rebuild_cache/fast: rebuild_cache

.PHONY : rebuild_cache/fast

# Special rule for the target edit_cache
edit_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake cache editor..."
	/nfs/zfs-student-6/users/meckhard/.brew/Cellar/cmake/3.8.2/bin/ccmake -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : edit_cache

# Special rule for the target edit_cache
edit_cache/fast: edit_cache

.PHONY : edit_cache/fast

# The main all target
all: cmake_check_build_system
	$(CMAKE_COMMAND) -E cmake_progress_start /nfs/zfs-student-6/users/meckhard/Wethinkcode/snek/CMakeFiles /nfs/zfs-student-6/users/meckhard/Wethinkcode/snek/CMakeFiles/progress.marks
	$(MAKE) -f CMakeFiles/Makefile2 all
	$(CMAKE_COMMAND) -E cmake_progress_start /nfs/zfs-student-6/users/meckhard/Wethinkcode/snek/CMakeFiles 0
.PHONY : all

# The main clean target
clean:
	$(MAKE) -f CMakeFiles/Makefile2 clean
.PHONY : clean

# The main clean target
clean/fast: clean

.PHONY : clean/fast

# Prepare targets for installation.
preinstall: all
	$(MAKE) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall

# Prepare targets for installation.
preinstall/fast:
	$(MAKE) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall/fast

# clear depends
depend:
	$(CMAKE_COMMAND) -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 1
.PHONY : depend

#=============================================================================
# Target rules for targets named nibbler

# Build rule for target.
nibbler: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 nibbler
.PHONY : nibbler

# fast build rule for target.
nibbler/fast:
	$(MAKE) -f CMakeFiles/nibbler.dir/build.make CMakeFiles/nibbler.dir/build
.PHONY : nibbler/fast

#=============================================================================
# Target rules for targets named BasicRender

# Build rule for target.
BasicRender: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 BasicRender
.PHONY : BasicRender

# fast build rule for target.
BasicRender/fast:
	$(MAKE) -f GUILib1/CMakeFiles/BasicRender.dir/build.make GUILib1/CMakeFiles/BasicRender.dir/build
.PHONY : BasicRender/fast

snake.o: snake.cpp.o

.PHONY : snake.o

# target to build an object file
snake.cpp.o:
	$(MAKE) -f CMakeFiles/nibbler.dir/build.make CMakeFiles/nibbler.dir/snake.cpp.o
.PHONY : snake.cpp.o

snake.i: snake.cpp.i

.PHONY : snake.i

# target to preprocess a source file
snake.cpp.i:
	$(MAKE) -f CMakeFiles/nibbler.dir/build.make CMakeFiles/nibbler.dir/snake.cpp.i
.PHONY : snake.cpp.i

snake.s: snake.cpp.s

.PHONY : snake.s

# target to generate assembly for a file
snake.cpp.s:
	$(MAKE) -f CMakeFiles/nibbler.dir/build.make CMakeFiles/nibbler.dir/snake.cpp.s
.PHONY : snake.cpp.s

snakePart.o: snakePart.cpp.o

.PHONY : snakePart.o

# target to build an object file
snakePart.cpp.o:
	$(MAKE) -f CMakeFiles/nibbler.dir/build.make CMakeFiles/nibbler.dir/snakePart.cpp.o
.PHONY : snakePart.cpp.o

snakePart.i: snakePart.cpp.i

.PHONY : snakePart.i

# target to preprocess a source file
snakePart.cpp.i:
	$(MAKE) -f CMakeFiles/nibbler.dir/build.make CMakeFiles/nibbler.dir/snakePart.cpp.i
.PHONY : snakePart.cpp.i

snakePart.s: snakePart.cpp.s

.PHONY : snakePart.s

# target to generate assembly for a file
snakePart.cpp.s:
	$(MAKE) -f CMakeFiles/nibbler.dir/build.make CMakeFiles/nibbler.dir/snakePart.cpp.s
.PHONY : snakePart.cpp.s

test.o: test.cpp.o

.PHONY : test.o

# target to build an object file
test.cpp.o:
	$(MAKE) -f CMakeFiles/nibbler.dir/build.make CMakeFiles/nibbler.dir/test.cpp.o
.PHONY : test.cpp.o

test.i: test.cpp.i

.PHONY : test.i

# target to preprocess a source file
test.cpp.i:
	$(MAKE) -f CMakeFiles/nibbler.dir/build.make CMakeFiles/nibbler.dir/test.cpp.i
.PHONY : test.cpp.i

test.s: test.cpp.s

.PHONY : test.s

# target to generate assembly for a file
test.cpp.s:
	$(MAKE) -f CMakeFiles/nibbler.dir/build.make CMakeFiles/nibbler.dir/test.cpp.s
.PHONY : test.cpp.s

# Help Target
help:
	@echo "The following are some of the valid targets for this Makefile:"
	@echo "... all (the default if no target is provided)"
	@echo "... clean"
	@echo "... depend"
	@echo "... rebuild_cache"
	@echo "... edit_cache"
	@echo "... nibbler"
	@echo "... BasicRender"
	@echo "... snake.o"
	@echo "... snake.i"
	@echo "... snake.s"
	@echo "... snakePart.o"
	@echo "... snakePart.i"
	@echo "... snakePart.s"
	@echo "... test.o"
	@echo "... test.i"
	@echo "... test.s"
.PHONY : help



#=============================================================================
# Special targets to cleanup operation of make.

# Special rule to run CMake to check the build system integrity.
# No rule that depends on this can have commands that come from listfiles
# because they might be regenerated.
cmake_check_build_system:
	$(CMAKE_COMMAND) -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 0
.PHONY : cmake_check_build_system

