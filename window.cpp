#include "window.hpp"

window::window(const std::string &title, int width, int height) :
_title(title), _width(width), _height(height)
{
    if (!init())
    {
        this->_closed = false;
    }
    else
    {
        this->_closed = true;
    }
}

window::~window()
{
    SDL_DestroyRenderer(_render);
    SDL_DestroyWindow(_window);
    SDL_Quit();    
}

bool window::init()
{
    if (SDL_Init(SDL_INIT_VIDEO) != 0)
    {
        std::cerr << "Failed to initilize SDL\n";
        return (0);
    }

    _window = SDL_CreateWindow(
        _title.c_str(),
        SDL_WINDOWPOS_CENTERED,
        SDL_WINDOWPOS_CENTERED,
        _width,
        _height,
        SDL_WINDOW_OPENGL | SDL_WINDOW_SHOWN
    );

    if (_window == nullptr)
    {
        std::cerr << "Failed to create window\n";
        return (0);
    }

    _render = SDL_CreateRenderer(_window, -1, SDL_RENDERER_ACCELERATED);

    if (_render == nullptr)
    {
         std::cerr << "Failed to create renderer\n";

         return (0);
    }

    return (true);
}

bool window::isClosed() const
{
    return this->_closed;
}


void window::pollEvents()
{
    SDL_Event event;
    if (SDL_PollEvent(&event))
    {

    std::cout << event.type;
        switch (event.type)
        {
            case SDL_KEYDOWN:
             SDL_Quit();
            _closed = false; 
            break;

            default:
            break;
        }
    }
}

void window::clear() const
{
    SDL_SetRenderDrawColor(_render, 0 ,0, 200, 255);
    SDL_RenderClear(_render);

    SDL_Rect rect;

    rect.w = 120;
    rect.h = 120;
    rect.x = (_width / 2) - (rect.w / 2);
    rect.y = (_height / 2) - (rect.h / 2);

    SDL_SetRenderDrawColor(_render, 200 ,0, 200, 255);
    SDL_RenderFillRect(_render, &rect);
    SDL_RenderPresent(_render);
}