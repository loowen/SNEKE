#pragma once
#include <iostream>
#include <vector>
#include <cstdlib>
#include "snakePart.hpp"
#include "FoodFactory.hpp"
#include "Food.hpp"

class SnakeClass
{
    public:
    SnakeClass(SnakeClass const & src);
    SnakeClass();
    ~SnakeClass();
    std::vector<snakePart> Snek;
    void move();
    bool SelfCollision();
    void setDir(int i);
    int getDir()const;
    int getSize();
    void FoodCollision(FoodFactory & src);
    void grow(int x, int y);
    
    SnakeClass & operator=(SnakeClass const & cpp);
    snakePart & operator[](int a);


    private:
    int _dir;
    bool _grow;

};