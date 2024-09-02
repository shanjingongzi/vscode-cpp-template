#pragma once
#if defined Shared_LIBRARY
#define SHARED_API __declspec(dllexport)
#else
#define SHARED_API __declspec(dllimport)
#endif