#pragma once

class Entity
{
    public:
    Entity();
    Entity(Entity const & src);
    Entity(int x, int y);
    ~Entity();
    int getX()const;
    int getY()const;
    void setX(int x);
    void setY(int y);

    Entity & operator=(Entity const & src);
    bool operator==(Entity const & src);

    protected:
    int _x;
    int _y;
};