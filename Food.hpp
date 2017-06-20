#pragma once

#include "Entity.hpp"

class Food : public Entity
{
    public:
    Food();
    Food(int height, int width);
    Food(Food const & src);
    ~Food();
    int getType()const;
    void setType(int i);

    private:
    int _type;
};