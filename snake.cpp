#include "snake.hpp"

SnakeClass::SnakeClass(SnakeClass const & src)
{
    *this = src;
}

SnakeClass::SnakeClass()
{
    int x = 20, y = 20;
    snakePart * n = new snakePart(x,y,false);
    //snek.push_back(n)
    for (int it = 0; it != 4; ++it)
    {
        if(it == 0)
        {
            n = new snakePart(x,y,true);
            Snek.push_back(*n);
            //this->Snek[it].setHead(true);
        }
        else
        {
            n = new snakePart(x,y,false);
            Snek.push_back(*n);
        }
        //this->Snek[it].setX(x);
        //this->Snek[it].setY(y);
        y = y + 10;
    }
    this->_dir = -2;
}

SnakeClass::~SnakeClass()
{
    std::cout << "die";
}

SnakeClass & SnakeClass::operator=(SnakeClass const & cpp)
{
    cpp.getDir();
    return *this;
}

int SnakeClass::getSize()
{
    return this->Snek.size();
}

int SnakeClass::getDir()const
{
    return this->_dir;
}

void SnakeClass::setDir(int i)
{
    this->_dir = i;
}

void SnakeClass::move()
{
    int x = Snek[this->getSize()-1].getX();
    int y = Snek[this->getSize()-1].getY();
    for (int it = this->getSize()-1; it >= 0; --it)
    {
        if (it != 0)
        {
            this->Snek[it].setX(this->Snek[it-1].getX());
            this->Snek[it].setY(this->Snek[it-1].getY());
            this->Snek[it].setDir(this->Snek[it-1].getDir());
        }
        else
        {
            switch(this->_dir)
            {
                case 1:
                    if (this->Snek[it].getY() - 20 > 0)
                        this->Snek[it].setY(this->Snek[it].getY() - 20);
                        this->Snek[it].setDir(1);
                    break;
                case -1:
                    this->Snek[it].setY(this->Snek[it].getY() + 20);
                    this->Snek[it].setDir(-1);
                    break;
                case 2:
                    if(this->Snek[it].getX() - 20 > 0)
                        this->Snek[it].setX(this->Snek[it].getX() - 20);
                        this->Snek[it].setDir(2);
                    break;
                case -2:
                    this->Snek[it].setX(this->Snek[it].getX() + 20);
                    this->Snek[it].setDir(-2);
                    break;
            }

        }
    }
    if (_grow)
    {
        grow(x,y);
    }
}

bool SnakeClass::SelfCollision()
{   
    for(int it = this->getSize()-1; it > 0 ; --it)
    {
        if (Snek[it] == Snek[0])
        {
            return (1);
        }
    }
    return (0);
}

snakePart & SnakeClass::operator[](int a)
{
    return this->Snek[a];
}

void SnakeClass::FoodCollision(FoodFactory & src)
{
    for(int i = 0; i < 5; i++)
    {
        if(src[i].getX() == Snek[0].getX() && src[i].getY() == Snek[0].getY())
        {
            _grow = true;
            src[i].setType(0);
        }
    }
}

void SnakeClass::grow(int x, int y)
{
    snakePart * n = new snakePart(x,y,false);
    Snek.push_back(*n);
    _grow = false;
}