function(fetch_package pakcage_name git_link git_tag)
  find_package("${pakcage_name}" QUIET)

  if (NOT "${${pakcage_name}_FOUND}")

    FetchContent_Declare("${pakcage_name}"
      GIT_REPOSITORY "${git_link}"
      GIT_TAG "${git_tag}"
    )

    FetchContent_MakeAvailable("${pakcage_name}")

  endif (NOT "${${pakcage_name}_FOUND}")
endfunction()

fetch_package(GTest https://github.com/google/googletest.git main)
