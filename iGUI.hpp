#include <SDL2/SDL.h>
#include "snake.hpp"
#include <cstdlib>
#include <string>
#include <iostream>
//#include "/SDL.hpp"
#ifndef iGUI_H
#define iGUI_H

class GUI
{

public:

    virtual void draw() const = 0;
    virtual int pollEvents() = 0;
    virtual void clear() const = 0;
    virtual bool isClosed() const = 0;
    virtual ~GUI() {};
};

typedef GUI* create_t();
typedef void destroy_t(GUI*);

#endif