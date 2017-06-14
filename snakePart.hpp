#pragma once

class snakePart
    {
        public:
        int x, y;
        bool head;
        snakePart(snakePart const & src);
        snakePart(int col, int row);
        snakePart();
        ~snakePart();
        snakePart & operator=(snakePart const & src);
    };