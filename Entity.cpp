#include "Entity.hpp"

Entity::Entity()
{
    _x = 0;
    _y = 0;
}

Entity::Entity(Entity const & src)
{
    _x = src.getX();
    _y = src.getY();
}

Entity::Entity(int x, int y)
{
    _x = x;
    _y = y;
}

Entity::~Entity()
{

}

int Entity::getX()const
{
    return this->_x;
}

int Entity::getY()const
{
    return this->_y;
}

void Entity::setX(int x)
{
    this->_x = x;
}

void Entity::setY(int y)
{
    this->_y = y;
}

bool Entity::operator==(Entity const & src)
{
    if (this->_x == src.getX() && this->_y == src.getY())
    {
        return (1);
    }
    else
    {
        return(0);
    }
}

Entity & Entity::operator=(Entity const & src)
{
    this->_x = src.getX();
    this->_y = src.getY();
    return *this;
}