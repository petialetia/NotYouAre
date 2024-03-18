include(FetchContent)

FetchContent_Declare(
  googletest
  GIT_REPOSITORY https://github.com/google/googletest.git
  GIT_TAG main
)

FetchContent_MakeAvailable(googletest)

add_executable(Tests EXCLUDE_FROM_ALL MainTests.cpp NotYouAreTests.cpp)
target_link_libraries(Tests PUBLIC GTest::gtest_main NotYouAre)

target_code_coverage(Tests AUTO EXCLUDE ${PROJECT_SOURCE_DIR}/tests/* ${PROJECT_SOURCE_DIR}/build/*)
