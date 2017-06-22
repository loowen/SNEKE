#include "GUILib1/SDL.hpp"
#include "snake.hpp"

#include <stdlib.h>
#include <stdio.h>
#include <dlfcn.h>

    int w, h;
void* getHandle(const char *lib)
{
    void * handle;
    handle = dlopen(lib, RTLD_LAZY);
    if (!handle)
    {}
        //throw (LibLoadFailed(dlerror()));
    return (handle);
}

GUI	*loadLibObject(void *handle,int width, int height)
{
	void	*create;
	char 	*error;
	GUI* 	gui = nullptr;

	create = dlsym(handle, "create");
	auto my_gui = reinterpret_cast<GUI *(*)(const std::string &, int , int )>(create);
	if ((error = dlerror()) != NULL)
	{
		//throw (LibLoadFailed(error));
	}
	if (my_gui != nullptr)
		gui = my_gui("Snake",width,height);
	return (gui);
}

void	libSwitch(int libID, GUI *&curLib, void **curhandle)
{
	try
	{
		void	*handle;
		switch (libID)
		{
			case  4:
			{
				handle = getHandle("libBasicRender.dylib");
				GUI *newLib = loadLibObject(handle,w,h);
				curLib->passWindow(newLib);
				//delete(curLib);

				//dlclose(*curhandle);
				*curhandle = handle;
                
				curLib = newLib;
				break;
			}
			case  5:
			{

				handle = getHandle("libBasicRender2.dylib");
				GUI *newLib = loadLibObject(handle,w,h);
				curLib->passWindow(newLib);
				//delete(curLib);

				//dlclose(*curhandle);
				*curhandle = handle;
				curLib = newLib;
				break;
			}
            case 6:
            {

                //dlclose(*curhandle);
                handle = getHandle("libBasicRender3.dylib");
                GUI *newLib = loadLibObject(handle,w,h);
                curLib->passWindow(newLib);
                //delete(curLib);

				//dlclose(*curhandle);
                *curhandle = handle;
                curLib = newLib;
                break;
            }
		}
	}
	catch (std::exception &e)
	{
		std::cerr << "Could not switch basicLib : " << e.what() << std::endl;
	}
}

int main(int argc, char **argv)
{

    w = 0;
    h = 0;

    if (argc != 3)
    {
        std::cout << "please inclde width and height min 800 max 1000";
    }
    else if (argc == 3)
    {
        try
        {
            if (std::stoi(argv[1]) >= 800 && std::stoi(argv[1]) <= 1000)
               w = std::stoi(argv[1]);
            if (std::stoi(argv[2]) >= 800 && std::stoi(argv[1]) <= 1000)
                h = std::stoi(argv[2]);
        }
        catch (std::exception& e)
        {
            std::cerr << e.what(); 
            return (0);
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
        void    *hand;
    
         //Access the library 
	    handle = dlopen ("libBasicRender.dylib", RTLD_LAZY);
        //if null lib was not opened
        //look for function called "create"  
        createV = dlsym(handle, "create");
        //if null sym not found
        auto create = reinterpret_cast<GUI *(*)(const std::string &, int , int )> (createV);

    //    void * dlopen(const char *SDL-Lib, int flag);
        GUI *fui = create("Snake",w,h); //from library
        fui->init();
        int i;
        int a = 0;
        FoodFactory food;
        GUI *change;

        food.spawn();

        while (fui->isClosed() && !snerk.SelfCollision())
        {
            a++;
            i = fui->pollEvents();
            if (i == 1 || i == 2 || i == -1 || i == -2)
            {
                snerk.setDir(i);
            }
            switch(i)
            {
                case 4:
                    libSwitch(4,fui,&handle);
                    break;
                case 5:
                    libSwitch(5,fui,&handle);
                    break;
                case 6:
                    libSwitch(6,fui,&handle);
                    break;
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
    }
    return (0);
}