# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.8

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
CMAKE_COMMAND = /nfs/zfs-student-6/users/meckhard/.brew/Cellar/cmake/3.8.2/bin/cmake

# The command to remove a file.
RM = /nfs/zfs-student-6/users/meckhard/.brew/Cellar/cmake/3.8.2/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /nfs/zfs-student-6/users/meckhard/Wethinkcode/snek

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /nfs/zfs-student-6/users/meckhard/Wethinkcode/snek

# Include any dependencies generated for this target.
include GUILib2/CMakeFiles/BasicRender2.dir/depend.make

# Include the progress variables for this target.
include GUILib2/CMakeFiles/BasicRender2.dir/progress.make

# Include the compile flags for this target's objects.
include GUILib2/CMakeFiles/BasicRender2.dir/flags.make

GUILib2/CMakeFiles/BasicRender2.dir/SDL.cpp.o: GUILib2/CMakeFiles/BasicRender2.dir/flags.make
GUILib2/CMakeFiles/BasicRender2.dir/SDL.cpp.o: GUILib2/SDL.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/nfs/zfs-student-6/users/meckhard/Wethinkcode/snek/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object GUILib2/CMakeFiles/BasicRender2.dir/SDL.cpp.o"
	cd /nfs/zfs-student-6/users/meckhard/Wethinkcode/snek/GUILib2 && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/BasicRender2.dir/SDL.cpp.o -c /nfs/zfs-student-6/users/meckhard/Wethinkcode/snek/GUILib2/SDL.cpp

GUILib2/CMakeFiles/BasicRender2.dir/SDL.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/BasicRender2.dir/SDL.cpp.i"
	cd /nfs/zfs-student-6/users/meckhard/Wethinkcode/snek/GUILib2 && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /nfs/zfs-student-6/users/meckhard/Wethinkcode/snek/GUILib2/SDL.cpp > CMakeFiles/BasicRender2.dir/SDL.cpp.i

GUILib2/CMakeFiles/BasicRender2.dir/SDL.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/BasicRender2.dir/SDL.cpp.s"
	cd /nfs/zfs-student-6/users/meckhard/Wethinkcode/snek/GUILib2 && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /nfs/zfs-student-6/users/meckhard/Wethinkcode/snek/GUILib2/SDL.cpp -o CMakeFiles/BasicRender2.dir/SDL.cpp.s

GUILib2/CMakeFiles/BasicRender2.dir/SDL.cpp.o.requires:

.PHONY : GUILib2/CMakeFiles/BasicRender2.dir/SDL.cpp.o.requires

GUILib2/CMakeFiles/BasicRender2.dir/SDL.cpp.o.provides: GUILib2/CMakeFiles/BasicRender2.dir/SDL.cpp.o.requires
	$(MAKE) -f GUILib2/CMakeFiles/BasicRender2.dir/build.make GUILib2/CMakeFiles/BasicRender2.dir/SDL.cpp.o.provides.build
.PHONY : GUILib2/CMakeFiles/BasicRender2.dir/SDL.cpp.o.provides

GUILib2/CMakeFiles/BasicRender2.dir/SDL.cpp.o.provides.build: GUILib2/CMakeFiles/BasicRender2.dir/SDL.cpp.o


GUILib2/CMakeFiles/BasicRender2.dir/__/iGUI.cpp.o: GUILib2/CMakeFiles/BasicRender2.dir/flags.make
GUILib2/CMakeFiles/BasicRender2.dir/__/iGUI.cpp.o: iGUI.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/nfs/zfs-student-6/users/meckhard/Wethinkcode/snek/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object GUILib2/CMakeFiles/BasicRender2.dir/__/iGUI.cpp.o"
	cd /nfs/zfs-student-6/users/meckhard/Wethinkcode/snek/GUILib2 && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/BasicRender2.dir/__/iGUI.cpp.o -c /nfs/zfs-student-6/users/meckhard/Wethinkcode/snek/iGUI.cpp

GUILib2/CMakeFiles/BasicRender2.dir/__/iGUI.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/BasicRender2.dir/__/iGUI.cpp.i"
	cd /nfs/zfs-student-6/users/meckhard/Wethinkcode/snek/GUILib2 && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /nfs/zfs-student-6/users/meckhard/Wethinkcode/snek/iGUI.cpp > CMakeFiles/BasicRender2.dir/__/iGUI.cpp.i

GUILib2/CMakeFiles/BasicRender2.dir/__/iGUI.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/BasicRender2.dir/__/iGUI.cpp.s"
	cd /nfs/zfs-student-6/users/meckhard/Wethinkcode/snek/GUILib2 && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /nfs/zfs-student-6/users/meckhard/Wethinkcode/snek/iGUI.cpp -o CMakeFiles/BasicRender2.dir/__/iGUI.cpp.s

GUILib2/CMakeFiles/BasicRender2.dir/__/iGUI.cpp.o.requires:

.PHONY : GUILib2/CMakeFiles/BasicRender2.dir/__/iGUI.cpp.o.requires

GUILib2/CMakeFiles/BasicRender2.dir/__/iGUI.cpp.o.provides: GUILib2/CMakeFiles/BasicRender2.dir/__/iGUI.cpp.o.requires
	$(MAKE) -f GUILib2/CMakeFiles/BasicRender2.dir/build.make GUILib2/CMakeFiles/BasicRender2.dir/__/iGUI.cpp.o.provides.build
.PHONY : GUILib2/CMakeFiles/BasicRender2.dir/__/iGUI.cpp.o.provides

GUILib2/CMakeFiles/BasicRender2.dir/__/iGUI.cpp.o.provides.build: GUILib2/CMakeFiles/BasicRender2.dir/__/iGUI.cpp.o


GUILib2/CMakeFiles/BasicRender2.dir/__/snake.cpp.o: GUILib2/CMakeFiles/BasicRender2.dir/flags.make
GUILib2/CMakeFiles/BasicRender2.dir/__/snake.cpp.o: snake.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/nfs/zfs-student-6/users/meckhard/Wethinkcode/snek/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object GUILib2/CMakeFiles/BasicRender2.dir/__/snake.cpp.o"
	cd /nfs/zfs-student-6/users/meckhard/Wethinkcode/snek/GUILib2 && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/BasicRender2.dir/__/snake.cpp.o -c /nfs/zfs-student-6/users/meckhard/Wethinkcode/snek/snake.cpp

GUILib2/CMakeFiles/BasicRender2.dir/__/snake.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/BasicRender2.dir/__/snake.cpp.i"
	cd /nfs/zfs-student-6/users/meckhard/Wethinkcode/snek/GUILib2 && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /nfs/zfs-student-6/users/meckhard/Wethinkcode/snek/snake.cpp > CMakeFiles/BasicRender2.dir/__/snake.cpp.i

GUILib2/CMakeFiles/BasicRender2.dir/__/snake.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/BasicRender2.dir/__/snake.cpp.s"
	cd /nfs/zfs-student-6/users/meckhard/Wethinkcode/snek/GUILib2 && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /nfs/zfs-student-6/users/meckhard/Wethinkcode/snek/snake.cpp -o CMakeFiles/BasicRender2.dir/__/snake.cpp.s

GUILib2/CMakeFiles/BasicRender2.dir/__/snake.cpp.o.requires:

.PHONY : GUILib2/CMakeFiles/BasicRender2.dir/__/snake.cpp.o.requires

GUILib2/CMakeFiles/BasicRender2.dir/__/snake.cpp.o.provides: GUILib2/CMakeFiles/BasicRender2.dir/__/snake.cpp.o.requires
	$(MAKE) -f GUILib2/CMakeFiles/BasicRender2.dir/build.make GUILib2/CMakeFiles/BasicRender2.dir/__/snake.cpp.o.provides.build
.PHONY : GUILib2/CMakeFiles/BasicRender2.dir/__/snake.cpp.o.provides

GUILib2/CMakeFiles/BasicRender2.dir/__/snake.cpp.o.provides.build: GUILib2/CMakeFiles/BasicRender2.dir/__/snake.cpp.o


GUILib2/CMakeFiles/BasicRender2.dir/__/FoodFactory.cpp.o: GUILib2/CMakeFiles/BasicRender2.dir/flags.make
GUILib2/CMakeFiles/BasicRender2.dir/__/FoodFactory.cpp.o: FoodFactory.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/nfs/zfs-student-6/users/meckhard/Wethinkcode/snek/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object GUILib2/CMakeFiles/BasicRender2.dir/__/FoodFactory.cpp.o"
	cd /nfs/zfs-student-6/users/meckhard/Wethinkcode/snek/GUILib2 && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/BasicRender2.dir/__/FoodFactory.cpp.o -c /nfs/zfs-student-6/users/meckhard/Wethinkcode/snek/FoodFactory.cpp

GUILib2/CMakeFiles/BasicRender2.dir/__/FoodFactory.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/BasicRender2.dir/__/FoodFactory.cpp.i"
	cd /nfs/zfs-student-6/users/meckhard/Wethinkcode/snek/GUILib2 && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /nfs/zfs-student-6/users/meckhard/Wethinkcode/snek/FoodFactory.cpp > CMakeFiles/BasicRender2.dir/__/FoodFactory.cpp.i

GUILib2/CMakeFiles/BasicRender2.dir/__/FoodFactory.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/BasicRender2.dir/__/FoodFactory.cpp.s"
	cd /nfs/zfs-student-6/users/meckhard/Wethinkcode/snek/GUILib2 && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /nfs/zfs-student-6/users/meckhard/Wethinkcode/snek/FoodFactory.cpp -o CMakeFiles/BasicRender2.dir/__/FoodFactory.cpp.s

GUILib2/CMakeFiles/BasicRender2.dir/__/FoodFactory.cpp.o.requires:

.PHONY : GUILib2/CMakeFiles/BasicRender2.dir/__/FoodFactory.cpp.o.requires

GUILib2/CMakeFiles/BasicRender2.dir/__/FoodFactory.cpp.o.provides: GUILib2/CMakeFiles/BasicRender2.dir/__/FoodFactory.cpp.o.requires
	$(MAKE) -f GUILib2/CMakeFiles/BasicRender2.dir/build.make GUILib2/CMakeFiles/BasicRender2.dir/__/FoodFactory.cpp.o.provides.build
.PHONY : GUILib2/CMakeFiles/BasicRender2.dir/__/FoodFactory.cpp.o.provides

GUILib2/CMakeFiles/BasicRender2.dir/__/FoodFactory.cpp.o.provides.build: GUILib2/CMakeFiles/BasicRender2.dir/__/FoodFactory.cpp.o


GUILib2/CMakeFiles/BasicRender2.dir/__/Entity.cpp.o: GUILib2/CMakeFiles/BasicRender2.dir/flags.make
GUILib2/CMakeFiles/BasicRender2.dir/__/Entity.cpp.o: Entity.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/nfs/zfs-student-6/users/meckhard/Wethinkcode/snek/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object GUILib2/CMakeFiles/BasicRender2.dir/__/Entity.cpp.o"
	cd /nfs/zfs-student-6/users/meckhard/Wethinkcode/snek/GUILib2 && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/BasicRender2.dir/__/Entity.cpp.o -c /nfs/zfs-student-6/users/meckhard/Wethinkcode/snek/Entity.cpp

GUILib2/CMakeFiles/BasicRender2.dir/__/Entity.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/BasicRender2.dir/__/Entity.cpp.i"
	cd /nfs/zfs-student-6/users/meckhard/Wethinkcode/snek/GUILib2 && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /nfs/zfs-student-6/users/meckhard/Wethinkcode/snek/Entity.cpp > CMakeFiles/BasicRender2.dir/__/Entity.cpp.i

GUILib2/CMakeFiles/BasicRender2.dir/__/Entity.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/BasicRender2.dir/__/Entity.cpp.s"
	cd /nfs/zfs-student-6/users/meckhard/Wethinkcode/snek/GUILib2 && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /nfs/zfs-student-6/users/meckhard/Wethinkcode/snek/Entity.cpp -o CMakeFiles/BasicRender2.dir/__/Entity.cpp.s

GUILib2/CMakeFiles/BasicRender2.dir/__/Entity.cpp.o.requires:

.PHONY : GUILib2/CMakeFiles/BasicRender2.dir/__/Entity.cpp.o.requires

GUILib2/CMakeFiles/BasicRender2.dir/__/Entity.cpp.o.provides: GUILib2/CMakeFiles/BasicRender2.dir/__/Entity.cpp.o.requires
	$(MAKE) -f GUILib2/CMakeFiles/BasicRender2.dir/build.make GUILib2/CMakeFiles/BasicRender2.dir/__/Entity.cpp.o.provides.build
.PHONY : GUILib2/CMakeFiles/BasicRender2.dir/__/Entity.cpp.o.provides

GUILib2/CMakeFiles/BasicRender2.dir/__/Entity.cpp.o.provides.build: GUILib2/CMakeFiles/BasicRender2.dir/__/Entity.cpp.o


GUILib2/CMakeFiles/BasicRender2.dir/__/Food.cpp.o: GUILib2/CMakeFiles/BasicRender2.dir/flags.make
GUILib2/CMakeFiles/BasicRender2.dir/__/Food.cpp.o: Food.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/nfs/zfs-student-6/users/meckhard/Wethinkcode/snek/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object GUILib2/CMakeFiles/BasicRender2.dir/__/Food.cpp.o"
	cd /nfs/zfs-student-6/users/meckhard/Wethinkcode/snek/GUILib2 && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/BasicRender2.dir/__/Food.cpp.o -c /nfs/zfs-student-6/users/meckhard/Wethinkcode/snek/Food.cpp

GUILib2/CMakeFiles/BasicRender2.dir/__/Food.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/BasicRender2.dir/__/Food.cpp.i"
	cd /nfs/zfs-student-6/users/meckhard/Wethinkcode/snek/GUILib2 && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /nfs/zfs-student-6/users/meckhard/Wethinkcode/snek/Food.cpp > CMakeFiles/BasicRender2.dir/__/Food.cpp.i

GUILib2/CMakeFiles/BasicRender2.dir/__/Food.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/BasicRender2.dir/__/Food.cpp.s"
	cd /nfs/zfs-student-6/users/meckhard/Wethinkcode/snek/GUILib2 && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /nfs/zfs-student-6/users/meckhard/Wethinkcode/snek/Food.cpp -o CMakeFiles/BasicRender2.dir/__/Food.cpp.s

GUILib2/CMakeFiles/BasicRender2.dir/__/Food.cpp.o.requires:

.PHONY : GUILib2/CMakeFiles/BasicRender2.dir/__/Food.cpp.o.requires

GUILib2/CMakeFiles/BasicRender2.dir/__/Food.cpp.o.provides: GUILib2/CMakeFiles/BasicRender2.dir/__/Food.cpp.o.requires
	$(MAKE) -f GUILib2/CMakeFiles/BasicRender2.dir/build.make GUILib2/CMakeFiles/BasicRender2.dir/__/Food.cpp.o.provides.build
.PHONY : GUILib2/CMakeFiles/BasicRender2.dir/__/Food.cpp.o.provides

GUILib2/CMakeFiles/BasicRender2.dir/__/Food.cpp.o.provides.build: GUILib2/CMakeFiles/BasicRender2.dir/__/Food.cpp.o


GUILib2/CMakeFiles/BasicRender2.dir/__/snakePart.cpp.o: GUILib2/CMakeFiles/BasicRender2.dir/flags.make
GUILib2/CMakeFiles/BasicRender2.dir/__/snakePart.cpp.o: snakePart.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/nfs/zfs-student-6/users/meckhard/Wethinkcode/snek/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object GUILib2/CMakeFiles/BasicRender2.dir/__/snakePart.cpp.o"
	cd /nfs/zfs-student-6/users/meckhard/Wethinkcode/snek/GUILib2 && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/BasicRender2.dir/__/snakePart.cpp.o -c /nfs/zfs-student-6/users/meckhard/Wethinkcode/snek/snakePart.cpp

GUILib2/CMakeFiles/BasicRender2.dir/__/snakePart.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/BasicRender2.dir/__/snakePart.cpp.i"
	cd /nfs/zfs-student-6/users/meckhard/Wethinkcode/snek/GUILib2 && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /nfs/zfs-student-6/users/meckhard/Wethinkcode/snek/snakePart.cpp > CMakeFiles/BasicRender2.dir/__/snakePart.cpp.i

GUILib2/CMakeFiles/BasicRender2.dir/__/snakePart.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/BasicRender2.dir/__/snakePart.cpp.s"
	cd /nfs/zfs-student-6/users/meckhard/Wethinkcode/snek/GUILib2 && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /nfs/zfs-student-6/users/meckhard/Wethinkcode/snek/snakePart.cpp -o CMakeFiles/BasicRender2.dir/__/snakePart.cpp.s

GUILib2/CMakeFiles/BasicRender2.dir/__/snakePart.cpp.o.requires:

.PHONY : GUILib2/CMakeFiles/BasicRender2.dir/__/snakePart.cpp.o.requires

GUILib2/CMakeFiles/BasicRender2.dir/__/snakePart.cpp.o.provides: GUILib2/CMakeFiles/BasicRender2.dir/__/snakePart.cpp.o.requires
	$(MAKE) -f GUILib2/CMakeFiles/BasicRender2.dir/build.make GUILib2/CMakeFiles/BasicRender2.dir/__/snakePart.cpp.o.provides.build
.PHONY : GUILib2/CMakeFiles/BasicRender2.dir/__/snakePart.cpp.o.provides

GUILib2/CMakeFiles/BasicRender2.dir/__/snakePart.cpp.o.provides.build: GUILib2/CMakeFiles/BasicRender2.dir/__/snakePart.cpp.o


# Object files for target BasicRender2
BasicRender2_OBJECTS = \
"CMakeFiles/BasicRender2.dir/SDL.cpp.o" \
"CMakeFiles/BasicRender2.dir/__/iGUI.cpp.o" \
"CMakeFiles/BasicRender2.dir/__/snake.cpp.o" \
"CMakeFiles/BasicRender2.dir/__/FoodFactory.cpp.o" \
"CMakeFiles/BasicRender2.dir/__/Entity.cpp.o" \
"CMakeFiles/BasicRender2.dir/__/Food.cpp.o" \
"CMakeFiles/BasicRender2.dir/__/snakePart.cpp.o"

# External object files for target BasicRender2
BasicRender2_EXTERNAL_OBJECTS =

GUILib2/libBasicRender2.dylib: GUILib2/CMakeFiles/BasicRender2.dir/SDL.cpp.o
GUILib2/libBasicRender2.dylib: GUILib2/CMakeFiles/BasicRender2.dir/__/iGUI.cpp.o
GUILib2/libBasicRender2.dylib: GUILib2/CMakeFiles/BasicRender2.dir/__/snake.cpp.o
GUILib2/libBasicRender2.dylib: GUILib2/CMakeFiles/BasicRender2.dir/__/FoodFactory.cpp.o
GUILib2/libBasicRender2.dylib: GUILib2/CMakeFiles/BasicRender2.dir/__/Entity.cpp.o
GUILib2/libBasicRender2.dylib: GUILib2/CMakeFiles/BasicRender2.dir/__/Food.cpp.o
GUILib2/libBasicRender2.dylib: GUILib2/CMakeFiles/BasicRender2.dir/__/snakePart.cpp.o
GUILib2/libBasicRender2.dylib: GUILib2/CMakeFiles/BasicRender2.dir/build.make
GUILib2/libBasicRender2.dylib: /nfs/zfs-student-6/users/meckhard/.brew/lib/libSDL2.dylib
GUILib2/libBasicRender2.dylib: /nfs/zfs-student-6/users/meckhard/.brew/lib/libSDL2_ttf.dylib
GUILib2/libBasicRender2.dylib: /nfs/zfs-student-6/users/meckhard/.brew/lib/libSDL2_image.dylib
GUILib2/libBasicRender2.dylib: GUILib2/CMakeFiles/BasicRender2.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/nfs/zfs-student-6/users/meckhard/Wethinkcode/snek/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Linking CXX shared library libBasicRender2.dylib"
	cd /nfs/zfs-student-6/users/meckhard/Wethinkcode/snek/GUILib2 && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/BasicRender2.dir/link.txt --verbose=$(VERBOSE)
	cd /nfs/zfs-student-6/users/meckhard/Wethinkcode/snek/GUILib2 && /nfs/zfs-student-6/users/meckhard/.brew/Cellar/cmake/3.8.2/bin/cmake -E copy_if_different libBasicRender2.dylib /nfs/zfs-student-6/users/meckhard/Wethinkcode/snek

# Rule to build all files generated by this target.
GUILib2/CMakeFiles/BasicRender2.dir/build: GUILib2/libBasicRender2.dylib

.PHONY : GUILib2/CMakeFiles/BasicRender2.dir/build

GUILib2/CMakeFiles/BasicRender2.dir/requires: GUILib2/CMakeFiles/BasicRender2.dir/SDL.cpp.o.requires
GUILib2/CMakeFiles/BasicRender2.dir/requires: GUILib2/CMakeFiles/BasicRender2.dir/__/iGUI.cpp.o.requires
GUILib2/CMakeFiles/BasicRender2.dir/requires: GUILib2/CMakeFiles/BasicRender2.dir/__/snake.cpp.o.requires
GUILib2/CMakeFiles/BasicRender2.dir/requires: GUILib2/CMakeFiles/BasicRender2.dir/__/FoodFactory.cpp.o.requires
GUILib2/CMakeFiles/BasicRender2.dir/requires: GUILib2/CMakeFiles/BasicRender2.dir/__/Entity.cpp.o.requires
GUILib2/CMakeFiles/BasicRender2.dir/requires: GUILib2/CMakeFiles/BasicRender2.dir/__/Food.cpp.o.requires
GUILib2/CMakeFiles/BasicRender2.dir/requires: GUILib2/CMakeFiles/BasicRender2.dir/__/snakePart.cpp.o.requires

.PHONY : GUILib2/CMakeFiles/BasicRender2.dir/requires

GUILib2/CMakeFiles/BasicRender2.dir/clean:
	cd /nfs/zfs-student-6/users/meckhard/Wethinkcode/snek/GUILib2 && $(CMAKE_COMMAND) -P CMakeFiles/BasicRender2.dir/cmake_clean.cmake
.PHONY : GUILib2/CMakeFiles/BasicRender2.dir/clean

GUILib2/CMakeFiles/BasicRender2.dir/depend:
	cd /nfs/zfs-student-6/users/meckhard/Wethinkcode/snek && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /nfs/zfs-student-6/users/meckhard/Wethinkcode/snek /nfs/zfs-student-6/users/meckhard/Wethinkcode/snek/GUILib2 /nfs/zfs-student-6/users/meckhard/Wethinkcode/snek /nfs/zfs-student-6/users/meckhard/Wethinkcode/snek/GUILib2 /nfs/zfs-student-6/users/meckhard/Wethinkcode/snek/GUILib2/CMakeFiles/BasicRender2.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : GUILib2/CMakeFiles/BasicRender2.dir/depend

