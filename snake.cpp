#include "snake.hpp"

SnakeClass::SnakeClass(SnakeClass const & src)
{
    *this = src;
}

SnakeClass::SnakeClass()
{
    int x = 100, y = 100;
    Snek.reserve (4);
    for (int it = 0; it != 4; ++it)
    {
        this->Snek[it].x = x;
        this->Snek[it].y = y--;
    }
    this->_dir = 1;
}

SnakeClass::~SnakeClass()
{

}

SnakeClass & SnakeClass::operator=(SnakeClass const & cpp)
{
    return *this;
}

int SnakeClass::getDir()
{
    return this->_dir;
}

void SnakeClass::setDir(int i)
{
    this->_dir = i;
}

void SnakeClass::move()
{
    int i =0;
    for (std::vector<snakePart>::reverse_iterator it = this->Snek.rbegin(); it != this->Snek.rend(); ++it)
    {
        i++;
    }
    for (int it = i; it != 0; --it)
    {
        if (it != 0)
        {
            this->Snek[it].x = this->Snek[it+1].x;
            this->Snek[it].y = this->Snek[it+1].y;
        }
        else
        {
            switch(this->_dir)
            {
                case 1:
                    this->Snek[it].y = this->Snek[it].y - 1;
                    break;
                case -1:
                    this->Snek[it].y = this->Snek[it].y + 1;
                    break;
                case 2:
                    this->Snek[it].x = this->Snek[it].x - 1;
                    break;
                case -2:
                    this->Snek[it].x = this->Snek[it].x + 1;
            }

        }
    }
}