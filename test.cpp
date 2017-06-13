#include "window.hpp"

int main(int argc, char **argv)
{
    window window("SDL", 800, 600);

    while (window.isClosed())
    {
        window.pollEvents();
        window.clear();
    }
    return (0);
}