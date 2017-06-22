#include "Food.hpp"
#include <stdlib.h>
#include <time.h>

Food::Food()
{
    srand(clock());
    int a = rand() % 10 + 1;
    this->setX(a * 20);
    a = rand() % 10 + 1;
    this->setY(a * 20);
    this->setType(1);
}

Food::Food(int height, int width)
{
    srand(clock());
    int a = (rand() % (width/20)) + 1;
    this->setX(a * 20);
    a = (rand() % (height/20)) + 1;
    this->setY(a * 20);
    this->setType(1);
}

Food::Food(Food const & src)
{
    this->setX(src.getX());
    this->setY(src.getY());
    this->setType(src.getType());
}

Food::~Food()
{

}

int Food::getType()const
{
    return this->_type;
}

void Food::setType(int i)
{
    this->_type = i;
}