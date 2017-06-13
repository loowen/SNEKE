#pragma once
#include <iostream>
#include <vector>
#include <cstdlib>
#include "snakePart.hpp"

class SnakeClass
{
    public:
    SnakeClass(SnakeClass const & src);
    SnakeClass();
    ~SnakeClass();
    std::vector<snakePart> Snek;
    void move();
    
    SnakeClass & operator=(SnakeClass const & cpp);


    private:
    int _dir;

};