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

snakePart::snakePart(int col, int row)
{
    this->x = col;
    this->y = row;
}
