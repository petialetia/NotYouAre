#include <gtest/gtest.h>

#include <NotYouAre.hpp>

#include "CheckOutput.hpp"

TEST(NotYouAre, Handsome)
{
    checkOutput([]() {
        const int argc = 2;

        const char* argv[argc];
        argv[0] = "./Main";
        argv[1] = "handsome";

        NotYouAre(argc, argv);
    }, "Not, you are handsome\n");
}

