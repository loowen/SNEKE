#include "GUILib1/SDL.hpp"
#include "snake.hpp"

#include <stdlib.h>
#include <stdio.h>
#include <dlfcn.h>

int main(/*int argv, char **argc*/)
{
   // int w, h;

//    w = 0;
//    h = 0;

   /* if (argv != 3)
    {
        std::cout << "please inclde width and height min 800";
    }
    else if (argv == 3)
    {
        try
        {
            if (std::stoi(argc[2]) >= 800)
               w = std::stoi(argc[2]);
            if (std::stoi(argc[3]) >= 800)
                h = std::stoi(argc[3]);
        }
        catch (std::exception& e)
        {
            std::cerr << e.what(); 
            return (0);
        } */
        for(int i = 0; i < 2; ++i)
        {
            std::cout << i;
        }
        SnakeClass snerk;

        std::cout << "Snake 0 x: " << snerk[0].getX() << " y: " << snerk[0].getY() << std::endl;
        std::cout << "Snake 1 x: " << snerk[1].getX() << " y: " << snerk[1].getY() << std::endl;
        std::cout << "Snake 2 x: " << snerk[2].getX() << " y: " << snerk[2].getY() << std::endl;
        std::cout << "Snake 3 x: " << snerk[3].getX() << " y: " << snerk[3].getY() << std::endl;
        std::cout << "Snake size: " << snerk.getSize() << std::endl;
        snerk.SelfCollision();
        void 	*handle;
        void    *createV;
    
        //Access the library 
	    handle = dlopen ("libBasicRender2.dylib", RTLD_LAZY);
        //if null lib was not opened
        //look for function called "create"  
        createV = dlsym(handle, "create");
        //if null sym not found
        auto create = reinterpret_cast<GUI *(*)(const std::string &, int , int )> (createV);

    //    void * dlopen(const char *SDL-Lib, int flag);
        GUI *fui = create("SDL",800,800); //from library
        int i;
        int a = 0;
        FoodFactory food;

        food.spawn();

        while (fui->isClosed() && !snerk.SelfCollision())
        {
            a++;
            i = fui->pollEvents();
            if (i != 0 && i != 3)
            {
                snerk.setDir(i);
            }
            else if (i == 4 || i == 5 || i == 6)
            {

            }
            if(food.AllEaten())
            {
                food.spawn();
            }
            if (a % 100 == 0)
            {
                snerk.move();
            }
            snerk.FoodCollision(food);
            fui->clear(snerk, food);
        }
        std::cout << "Snake direction: " << snerk.getDir() << std::endl;
        std::cout << "Snake 0 x: " << snerk[0].getX() << " y: " << snerk[0].getY() << std::endl;
        std::cout << "Snake 0 x: " << snerk[1].getX() << " y: " << snerk[1].getY() << std::endl;
        std::cout << "Snake 0 x: " << snerk[2].getX() << " y: " << snerk[2].getY() << std::endl;
        std::cout << "Snake 0 x: " << snerk[3].getX() << " y: " << snerk[3].getY() << std::endl;
        return (0); 
        dlclose(handle);
 //   }
}