#include <SDL2/SDL.h>
#include "snake.hpp"
#include "FoodFactory.hpp"
#include <cstdlib>
#include <string>
#include <iostream>
//#include "/SDL.hpp"
#ifndef iGUI_H
#define iGUI_H

class GUI
{

public:

    //virtual void draw() = 0;
    virtual void draw(int x, int y, int r, int g, int b) = 0;
    virtual int pollEvents() = 0;
    //virtual void clear() = 0;
    virtual void clear(SnakeClass & src, FoodFactory & food) = 0;
    virtual bool isClosed() const = 0;
    virtual ~GUI() {};
};

typedef GUI* create_t(const std::string , int, int);
typedef void destroy_t(GUI*);

#endif