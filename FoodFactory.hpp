#pragma once
#include <iostream>
#include <vector>
#include <cstdlib>
#include "Food.hpp"

class FoodFactory
{
    public:
    FoodFactory();
    FoodFactory(FoodFactory const & src);
    FoodFactory(int height, int width);
    ~FoodFactory();

    FoodFactory & operator=(FoodFactory const & src);
    Food & operator[](int a);

    void spawn();
    bool AllEaten();
    int getHeight()const;
    int getWidth()const;

    private:
    Food *noms;
    int _height;
    int _width;

};