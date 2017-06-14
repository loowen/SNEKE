#include "SDL-Lib/window.hpp"
#include "snake.hpp"

int main(int argc, char **argv)
{
    window window("SDL", 800, 600);
    SnakeClass snerk;

    while (window.isClosed())
    {
        window.pollEvents(snerk);
        window.clear();
    }
    std::cout << "Snake direction: " << snerk.getDir();
    return (0);
}