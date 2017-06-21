#include "GUILib1/SDL.hpp"
#include "snake.hpp"

#include <stdlib.h>
#include <stdio.h>
#include <dlfcn.h>

int main()
{
    void 	*handle;
    void    *createV;
    
    //Access the library 
	handle = dlopen ("libBasicRender.dylib", RTLD_LAZY);
    //if null lib was not opened
    //look for function called "create"  
    createV = dlsym(handle, "create");
    //if null sym not found
    auto create = reinterpret_cast<GUI *(*)(const std::string &, int , int )> (createV);

//    void * dlopen(const char *SDL-Lib, int flag);
    GUI *fui = create("SDL",800,800); //from library
    int i;
    SnakeClass snerk;
    FoodFactory food;

    food.spawn();

    while (fui->isClosed())
    {

        i = fui->pollEvents();
        if (i != 0 && i != 3)
        {
            snerk.setDir(i);
        }
        snerk.FoodCollision(food);
        fui->clear();
    }
    std::cout << "Snake direction: " << snerk.getDir();
    return (0); 
    dlclose(handle);
}