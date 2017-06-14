#include <SDL2/SDL.h>
#include <cstdlib>
#include <string>
#include <iostream>
#include "window.hpp"
#ifndef RENDER_H
#define RENDER_H

class rect : public Window 
{
public:
    rect(const Window &window, int w, int h, int x, int y, int r, int g, int b, int a);
//    ~rect();

    void draw() const;

private:
    int _w, _h;
    int _x, _y;
    int _r, _g, _b, _a;

};

#endif