FROM ubuntu:latest

WORKDIR /NotYouAre

COPY src ./src
COPY include ./include
COPY tests ./tests
COPY CMakeLists.txt .
COPY .git ./.git

COPY requirements_ubuntu.sh .
COPY update_submodules.sh .
COPY build.sh .
COPY run.sh .

RUN bash requirements_ubuntu.sh
RUN bash update_submodules.sh
RUN bash build.sh

ENTRYPOINT ["/NotYouAre/run.sh"]
