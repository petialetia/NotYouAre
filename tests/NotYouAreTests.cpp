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

TEST(NotYouAre, Boring)
{
    checkOutput([]() {
        const int argc = 1;

        const char* argv[argc];
        argv[0] = "./Main";

        NotYouAre(argc, argv);
    }, "You are so boring, please give me some command line arguments\n");
}
