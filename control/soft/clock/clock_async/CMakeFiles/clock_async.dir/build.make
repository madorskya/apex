# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

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

# The program to use to edit the cache.
CMAKE_EDIT_COMMAND = /usr/bin/ccmake

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /root/clock/clock_async

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /root/clock/clock_async

# Include any dependencies generated for this target.
include CMakeFiles/clock_async.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/clock_async.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/clock_async.dir/flags.make

CMakeFiles/clock_async.dir/clock_async.c.o: CMakeFiles/clock_async.dir/flags.make
CMakeFiles/clock_async.dir/clock_async.c.o: clock_async.c
	$(CMAKE_COMMAND) -E cmake_progress_report /root/clock/clock_async/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object CMakeFiles/clock_async.dir/clock_async.c.o"
	/usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/clock_async.dir/clock_async.c.o   -c /root/clock/clock_async/clock_async.c

CMakeFiles/clock_async.dir/clock_async.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/clock_async.dir/clock_async.c.i"
	/usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -E /root/clock/clock_async/clock_async.c > CMakeFiles/clock_async.dir/clock_async.c.i

CMakeFiles/clock_async.dir/clock_async.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/clock_async.dir/clock_async.c.s"
	/usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -S /root/clock/clock_async/clock_async.c -o CMakeFiles/clock_async.dir/clock_async.c.s

CMakeFiles/clock_async.dir/clock_async.c.o.requires:
.PHONY : CMakeFiles/clock_async.dir/clock_async.c.o.requires

CMakeFiles/clock_async.dir/clock_async.c.o.provides: CMakeFiles/clock_async.dir/clock_async.c.o.requires
	$(MAKE) -f CMakeFiles/clock_async.dir/build.make CMakeFiles/clock_async.dir/clock_async.c.o.provides.build
.PHONY : CMakeFiles/clock_async.dir/clock_async.c.o.provides

CMakeFiles/clock_async.dir/clock_async.c.o.provides.build: CMakeFiles/clock_async.dir/clock_async.c.o

CMakeFiles/clock_async.dir/toml.c.o: CMakeFiles/clock_async.dir/flags.make
CMakeFiles/clock_async.dir/toml.c.o: toml.c
	$(CMAKE_COMMAND) -E cmake_progress_report /root/clock/clock_async/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object CMakeFiles/clock_async.dir/toml.c.o"
	/usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/clock_async.dir/toml.c.o   -c /root/clock/clock_async/toml.c

CMakeFiles/clock_async.dir/toml.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/clock_async.dir/toml.c.i"
	/usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -E /root/clock/clock_async/toml.c > CMakeFiles/clock_async.dir/toml.c.i

CMakeFiles/clock_async.dir/toml.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/clock_async.dir/toml.c.s"
	/usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -S /root/clock/clock_async/toml.c -o CMakeFiles/clock_async.dir/toml.c.s

CMakeFiles/clock_async.dir/toml.c.o.requires:
.PHONY : CMakeFiles/clock_async.dir/toml.c.o.requires

CMakeFiles/clock_async.dir/toml.c.o.provides: CMakeFiles/clock_async.dir/toml.c.o.requires
	$(MAKE) -f CMakeFiles/clock_async.dir/build.make CMakeFiles/clock_async.dir/toml.c.o.provides.build
.PHONY : CMakeFiles/clock_async.dir/toml.c.o.provides

CMakeFiles/clock_async.dir/toml.c.o.provides.build: CMakeFiles/clock_async.dir/toml.c.o

CMakeFiles/clock_async.dir/i2c-chip.c.o: CMakeFiles/clock_async.dir/flags.make
CMakeFiles/clock_async.dir/i2c-chip.c.o: i2c-chip.c
	$(CMAKE_COMMAND) -E cmake_progress_report /root/clock/clock_async/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object CMakeFiles/clock_async.dir/i2c-chip.c.o"
	/usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/clock_async.dir/i2c-chip.c.o   -c /root/clock/clock_async/i2c-chip.c

CMakeFiles/clock_async.dir/i2c-chip.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/clock_async.dir/i2c-chip.c.i"
	/usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -E /root/clock/clock_async/i2c-chip.c > CMakeFiles/clock_async.dir/i2c-chip.c.i

CMakeFiles/clock_async.dir/i2c-chip.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/clock_async.dir/i2c-chip.c.s"
	/usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -S /root/clock/clock_async/i2c-chip.c -o CMakeFiles/clock_async.dir/i2c-chip.c.s

CMakeFiles/clock_async.dir/i2c-chip.c.o.requires:
.PHONY : CMakeFiles/clock_async.dir/i2c-chip.c.o.requires

CMakeFiles/clock_async.dir/i2c-chip.c.o.provides: CMakeFiles/clock_async.dir/i2c-chip.c.o.requires
	$(MAKE) -f CMakeFiles/clock_async.dir/build.make CMakeFiles/clock_async.dir/i2c-chip.c.o.provides.build
.PHONY : CMakeFiles/clock_async.dir/i2c-chip.c.o.provides

CMakeFiles/clock_async.dir/i2c-chip.c.o.provides.build: CMakeFiles/clock_async.dir/i2c-chip.c.o

CMakeFiles/clock_async.dir/semaphore.c.o: CMakeFiles/clock_async.dir/flags.make
CMakeFiles/clock_async.dir/semaphore.c.o: semaphore.c
	$(CMAKE_COMMAND) -E cmake_progress_report /root/clock/clock_async/CMakeFiles $(CMAKE_PROGRESS_4)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object CMakeFiles/clock_async.dir/semaphore.c.o"
	/usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/clock_async.dir/semaphore.c.o   -c /root/clock/clock_async/semaphore.c

CMakeFiles/clock_async.dir/semaphore.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/clock_async.dir/semaphore.c.i"
	/usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -E /root/clock/clock_async/semaphore.c > CMakeFiles/clock_async.dir/semaphore.c.i

CMakeFiles/clock_async.dir/semaphore.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/clock_async.dir/semaphore.c.s"
	/usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -S /root/clock/clock_async/semaphore.c -o CMakeFiles/clock_async.dir/semaphore.c.s

CMakeFiles/clock_async.dir/semaphore.c.o.requires:
.PHONY : CMakeFiles/clock_async.dir/semaphore.c.o.requires

CMakeFiles/clock_async.dir/semaphore.c.o.provides: CMakeFiles/clock_async.dir/semaphore.c.o.requires
	$(MAKE) -f CMakeFiles/clock_async.dir/build.make CMakeFiles/clock_async.dir/semaphore.c.o.provides.build
.PHONY : CMakeFiles/clock_async.dir/semaphore.c.o.provides

CMakeFiles/clock_async.dir/semaphore.c.o.provides.build: CMakeFiles/clock_async.dir/semaphore.c.o

# Object files for target clock_async
clock_async_OBJECTS = \
"CMakeFiles/clock_async.dir/clock_async.c.o" \
"CMakeFiles/clock_async.dir/toml.c.o" \
"CMakeFiles/clock_async.dir/i2c-chip.c.o" \
"CMakeFiles/clock_async.dir/semaphore.c.o"

# External object files for target clock_async
clock_async_EXTERNAL_OBJECTS =

clock_async: CMakeFiles/clock_async.dir/clock_async.c.o
clock_async: CMakeFiles/clock_async.dir/toml.c.o
clock_async: CMakeFiles/clock_async.dir/i2c-chip.c.o
clock_async: CMakeFiles/clock_async.dir/semaphore.c.o
clock_async: CMakeFiles/clock_async.dir/build.make
clock_async: CMakeFiles/clock_async.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking C executable clock_async"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/clock_async.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/clock_async.dir/build: clock_async
.PHONY : CMakeFiles/clock_async.dir/build

CMakeFiles/clock_async.dir/requires: CMakeFiles/clock_async.dir/clock_async.c.o.requires
CMakeFiles/clock_async.dir/requires: CMakeFiles/clock_async.dir/toml.c.o.requires
CMakeFiles/clock_async.dir/requires: CMakeFiles/clock_async.dir/i2c-chip.c.o.requires
CMakeFiles/clock_async.dir/requires: CMakeFiles/clock_async.dir/semaphore.c.o.requires
.PHONY : CMakeFiles/clock_async.dir/requires

CMakeFiles/clock_async.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/clock_async.dir/cmake_clean.cmake
.PHONY : CMakeFiles/clock_async.dir/clean

CMakeFiles/clock_async.dir/depend:
	cd /root/clock/clock_async && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/clock/clock_async /root/clock/clock_async /root/clock/clock_async /root/clock/clock_async /root/clock/clock_async/CMakeFiles/clock_async.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/clock_async.dir/depend

