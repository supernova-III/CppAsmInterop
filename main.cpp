#include <windows.h>

extern "C" 
{
    void hello_world();
}

int main()
{
    hello_world();
    return 0;
}
