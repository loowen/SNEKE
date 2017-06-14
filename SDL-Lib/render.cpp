#include "render.hpp"

rect::rect(const Window &window, int w, int h, int x, int y, int r, int g, int b, int a) :
Window(window), _w(w), _h(h), _x(x), _y(y), _r(r), _g(g), _b(b), _a(a) 
{

}

//~rect()
//{

//}

void rect::draw() const
{
        SDL_Rect rect;

    rect.w = _w;
    rect.h = _h;
    rect.x = _x;
    rect.y = _y;

    SDL_SetRenderDrawColor(_render, 200 ,0, 200, 255);
    SDL_RenderFillRect(_render, &rect);
}