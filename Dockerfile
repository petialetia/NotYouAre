FROM ubuntu:latest

WORKDIR /NotYouAre

COPY src ./src
COPY CMakeLists.txt .

COPY requirements_ubuntu.sh .
COPY build.sh .
COPY run.sh .

RUN bash requirements_ubuntu.sh
RUN bash build.sh

ENTRYPOINT ["/NotYouAre/run.sh"]
