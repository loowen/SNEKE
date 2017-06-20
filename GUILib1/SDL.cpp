#include "SDL.hpp"


extern "C" GUI *create(const std::string &title, int width, int height)
{
    return (new SDL(title, width, height));
}

extern "C" void destroy(GUI *obj)
{
//    endwin();
    delete obj;
}

SDL::SDL()
{

}

SDL::SDL(const std::string &title, int width, int height) :
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

SDL & SDL::operator=(SDL const & src)
{

    this->_title = src.gettitle();
    this->_width = src.getwidth();
    this->_height = src.getheight();
    this->_closed = src.getclosed(); 
    _window = src._window;
    _render = src._render;

    return (*this);
}

SDL::SDL(SDL const & src)
{
    *this = src; 
}

std::string SDL::gettitle()const
{
    return this->_title;
}

int SDL::getwidth()const
{
    return this->_width;
}

int SDL::getheight()const
{
    return this->_height;
}

bool SDL::getclosed()const
{
    return this->_closed;
}

SDL::~SDL()
{
    SDL_DestroyRenderer(_render);
    SDL_DestroyWindow(_window);
    SDL_Quit();    
}

bool SDL::init()
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

bool SDL::isClosed() const
{
    return this->_closed;
}


int SDL::pollEvents()
{
    SDL_Event event;
    if (SDL_PollEvent(&event))
    {
        switch (event.type)
        {
            case SDL_KEYDOWN :
                switch (event.key.keysym.sym)
                {
                    case SDLK_ESCAPE :
                        SDL_Quit();
                        _closed = false;
                        return 0;
                        break;
                    
                    case SDLK_UP :
                        return(1);
                        break;
                    
                    case SDLK_DOWN :
                        return -1;
                        break;
                    
                    case SDLK_LEFT :
                        return 2;
                        break;

                    case SDLK_RIGHT :
                        return -2;
                        break;

                    default:
                        return 3;
                        break; 
                }
                break;

            default:
                return 3; 
                break;
        }
    }
    return 3;
}


void SDL::draw() const
{
        SDL_Rect rect;

    rect.w = _w;
    rect.h = _h;
    rect.x = _x;
    rect.y = _y;

    int r = _r;
    int g = _g;
    int b = _b;
    int a = _a;

    r = g; 
    g = r; 
    b = a; 
    a = b;

    SDL_SetRenderDrawColor(_render, 200 ,0, 200, 255);
    SDL_RenderFillRect(_render, &rect);
}

void SDL::clear() const
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