#include <SDL2/SDL.h>
#include <cstdlib>
#include <string>
#include <iostream>
#ifndef WINDOW_H
#define WINDOW_H

class window
{
public:
    window(const std::string &title, int width, int height);
    ~window();

    void pollEvents();
    void clear() const;

    bool isClosed() const;


private:
    bool init();

private:
    std::string _title;
    int _width = 800;
    int _height = 600;

    bool _closed = true; 
    SDL_Window *_window = nullptr;
    SDL_Renderer *_render = nullptr;

};

#endif