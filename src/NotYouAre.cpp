#include <cassert>
#include <iostream>

#include <NotYouAre.hpp>

void NotYouAre(int argc, const char** argv)
{
    assert(argc > 0);

    if (argc == 1)
    {
        std::cout << "You are so boring, please give me some command line arguments\n";
    }
    else
    {
        std::cout << "Not, you are ";

        for (int i = 1; i < argc - 1; ++i)
        {
            std::cout << argv[i] << " ";
        }

        std::cout << argv[argc - 1] << "\n";
    }
}
