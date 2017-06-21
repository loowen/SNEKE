#include "FoodFactory.hpp"

FoodFactory::FoodFactory()
{
    _height = 100;
    _width = 100;
    spawn();
}

FoodFactory::FoodFactory(FoodFactory const & src)
{
    *this = src;
}

FoodFactory::FoodFactory(int height, int width) : _height(height), _width(width)
{
    spawn();
}

FoodFactory::~FoodFactory()
{

}

FoodFactory & FoodFactory::operator=(FoodFactory const & src)
{
    for(int a = 0; a < 5 ; a++)
    {
        noms[a] = src.noms[a];
    }
    _height = src.getHeight();
    _width = src.getWidth();
    return *this;
}

Food & FoodFactory::operator[](int a)
{
    return noms[a];
}

int FoodFactory::getHeight()const
{
    return this->_height;
}

int FoodFactory::getWidth()const
{
    return this->_width;
}

void FoodFactory::spawn()
{
    delete[] noms;
    noms = new Food[5]{Food(getHeight(), getWidth()),Food(getHeight(), getWidth()),Food(getHeight(), getWidth()),Food(getHeight(), getWidth()),Food(getHeight(), getWidth())};
}

bool FoodFactory::AllEaten()
{
    for(int a = 0; a < 5; a++)
    {
        if (noms[a].getType() != 0)
        {
            return false;
        }
    }
    return true;
}