#include <iostream>
#include <vector>
#include <ncurses.h>
#include <cstdlib>
#ifndef  SNAKE_H
#define  SNAKE_H

class SnakeClass
{
    struct snakepart
    {
        int x, y;
        snakepart(int col, int row);
        snakepart();
    };
    int points, del, maxwidth, maxheight; //move max var to reder ?
    char direction, partchar, oldchar, pickup;
    bool get;
    snakepart food;
};

#endif