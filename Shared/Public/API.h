#pragma once

#include <Definitions.Shared.h>
#include <iostream>

class SHARED_API Example
{
public:
    Example() {}
    ~Example() {}
    void Test() {
        std::cout<<"This is a shared library example"<<std::endl;
    }
};

SHARED_API void SharedFunction();
extern SHARED_API  int a;