cmake_minimum_required(VERSION 3.7)
project(nibbler)

set(CMAKE_CXX_STANDARD 11)


IF(APPLE)
    FIND_LIBRARY(SDL_LIBRARY SDL2 )
    MARK_AS_ADVANCED (SDL_LIBRARY)
    SET(EXTRA_LIBS ${SDL_LIBRARY})
ENDIF (APPLE)


include_directories(nibbler includes)

set(SOURCE_FILES test.cpp window.cpp snake.cpp snakePart.cpp)


set(INCLUDE_FILES window.hpp snake.hpp snakePart.hpp)

add_executable(nibbler ${SOURCE_FILES} ${INCLUDE_FILES})

target_link_libraries(${PROJECT_NAME} ${EXTRA_LIBS})