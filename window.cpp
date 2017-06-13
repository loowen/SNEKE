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