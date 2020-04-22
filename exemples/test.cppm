module;
#include <cstdio>
export module test;

export void testfn()
{
    printf("printfmodule\n");
};

/*  -iostream doesn't work unless i include
    iostream in main file ???
    -import std does not work (probably 
    beacause std library is not c++20 yet)
*/