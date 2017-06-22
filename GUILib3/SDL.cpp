#include "SDL.hpp"
#include "../snake.hpp"


extern "C" GUI* create(const std::string &title, int width, int height)
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
    /*if (!init())
    {
        this->_closed = false;
    }
    else
    {
        this->_closed = true;
    }*/
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

                    case SDLK_1 :
                        return 4;
                        break;

                    case SDLK_2 :
                        return 5;
                        break;

                    case SDLK_3 :
                        return 6;

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

void SDL::draw(int x, int y, int r, int g, int b)
{
        SDL_Rect rect;

    rect.w = 20;
    rect.h = 20;
    rect.x = x;
    rect.y = y;

    SDL_SetRenderDrawColor(_render, r ,g, b, 255);
    SDL_RenderFillRect(_render, &rect);

}

void SDL::clear(SnakeClass & src, FoodFactory & food)
{
    SDL_SetRenderDrawColor(_render, 100 ,25, 100, 255);
    SDL_RenderClear(_render);

    int i = 0;

    while (i < src.getSize())
    {
        if (i == 0)
        {
            //draw((src[i].getX()), (src[i].getY()), 0, 225, 0);
            switch(src[i].getDir())
            {
                case 1:
                    draw((src[i].getX()), (src[i].getY()), 0, 225, 0);
                    break;
                case -1:
                    draw((src[i].getX()), (src[i].getY()), 0, 225, 0);
                    break;
                case 2:
                    draw((src[i].getX()), (src[i].getY()), 0, 225, 0);
                    break;
                case -2:
                    draw((src[i].getX()), (src[i].getY()), 0, 225, 0);
                    break;
            }
        }
        else
        {
            switch(src[i].getDir())
            {
                case 1:
                    draw((src[i].getX()), (src[i].getY()), 0, 125, 0);
                    break;
                case -1:
                    draw((src[i].getX()), (src[i].getY()), 0, 125, 0);
                    break;
                case 2:
                    draw((src[i].getX()), (src[i].getY()), 0, 125, 0);
                    break;
                case -2:
                    draw((src[i].getX()), (src[i].getY()), 0, 125, 0);
                    break;
            }
                
        }
        i++;
   }

    int j = 0;
    while (j < 5)
    {
        if (food[j].getType() == 1)
        {
            draw(food[j].getX(), food[j].getY(), 225, 0, 0);
        }
        j++;
    }

    SDL_RenderPresent(_render);
}

void			SDL::setWindow(void *win)
{
	_window = reinterpret_cast<SDL_Window*>(win);
}
void			SDL::setRenderer(void *ren)
{
	_render = reinterpret_cast<SDL_Renderer*>(ren);
}

void			SDL::passWindow(GUI *lib)
{
	lib->setWindow(reinterpret_cast<void*>(_window));
	lib->setRenderer(reinterpret_cast<void*>(_render));
}