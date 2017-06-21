#include "snakePart.hpp"

snakePart::snakePart(snakePart const & src)
{
    *this = src;
};

snakePart::~snakePart()
{

}

snakePart::snakePart()
{

}

snakePart::snakePart(int col, int row, bool head)
{
    this->setX(col);
    this->setY(row);
    this->_head = head;
}

snakePart & snakePart::operator=(snakePart const & src)
{
     this->setX(src.getX());
    this->setY(src.getY());
    this->_head = src.isHead();
    return *this;
}

bool snakePart::operator==(snakePart const & src)
{
    if(this->getX() == src.getX() && this->getY() == src.getY())
    {
        return true;
    }
    return false;
}

void snakePart::setHead(bool a)
{
    _head = a;
}

bool snakePart::isHead()const
{
    return this->_head;
}

int snakePart::getDir()
{
    return this->_dir;
}

void snakePart::setDir(int i)
{
    this->_dir = i;
}