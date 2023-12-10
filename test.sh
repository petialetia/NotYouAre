set -e

./build.sh --test

./bin/Tests.out --gtest_output=xml:TestsResults.xml
