#pragma once

#include <cstdlib>
#include <math.h>
#include <random>

class RandomGen
{
private:
    std::mt19937 random = std::mt19937(rand());

public:
    // in [0, 1]
    double next_double()
    {
        uint64_t val = static_cast<uint64_t>(random()) | static_cast<uint64_t>(random()) << 32;
        return val / static_cast<double>(UINT64_MAX);
    }

    double next_double(double min, double max)
    {
        return min + (max - min) * next_double();
    }
};
