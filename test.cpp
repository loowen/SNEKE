#include "window.hpp"
#include "snake.hpp"

int main(int argc, char **argv)
{
    window window("SDL", 800, 600);
    SnakeClass snerk;

    while (window.isClosed())
    {
        window.pollEvents();
        window.clear();
    }
    return (0);
}