#include <SDL2/SDL.h>
#include <cstdlib>
#include <string>
#include <iostream>
#include "../iGUI.hpp"
#ifndef SDL_H
#define SDL_H

class SDL : public GUI
{
public:
    SDL();
    SDL(const std::string &title, int width, int height);
    SDL(SDL const & src);
    
     ~SDL();


    int pollEvents();
  //  void clear();
  void clear(SnakeClass & src, FoodFactory & food);

    bool isClosed() const;

    std::string gettitle()const;
    int getwidth()const;
    int getheight()const;
    bool getclosed()const;
  //  SDL_Window* getwindow();
 //   SDL_Renderer* getrender();

   void draw(int x, int y, int r, int g, int b);

    SDL & operator=(SDL const & src);

private:
     bool init();

  /* int _x, _y;
    int _r, _g, _b, _a; */

protected:

    std::string _title;
    int _width = 800;
    int _height = 600;

    bool _closed = true; 
    SDL_Window* _window = nullptr;
    SDL_Renderer* _render = nullptr;

};

#endif