add_library(NotYouAre STATIC NotYouAre.cpp)

add_executable(Main Main.cpp)
target_link_libraries(Main NotYouAre)
