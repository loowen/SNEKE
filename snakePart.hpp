#pragma once

#include "Entity.hpp"

class snakePart : public Entity
    {
        public:
        bool isHead()const;
        snakePart(snakePart const & src);
        snakePart(int col, int row, bool head);
        snakePart();
        ~snakePart();
        snakePart & operator=(snakePart const & src);
        bool operator==(snakePart const & src);
        private:
        bool _head;
    };