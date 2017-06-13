#pragma once

class snakePart
    {
        public:
        int x, y;
        snakePart(snakePart const & src);
        snakePart(int col, int row);
        snakePart();
        ~snakePart();
    };