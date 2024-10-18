FROM ubuntu:latest

WORKDIR /NotYouAre

COPY requirements_ubuntu.sh .

RUN bash requirements_ubuntu.sh

COPY .git ./.git
COPY update_submodules.sh .

RUN bash update_submodules.sh

COPY src ./src
COPY include ./include
COPY CMakeLists.txt .
COPY build.sh .

RUN bash build.sh

COPY run.sh .

ENTRYPOINT ["/NotYouAre/run.sh"]
