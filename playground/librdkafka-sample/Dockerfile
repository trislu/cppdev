ARG VARIANT=debian-11
FROM mcr.microsoft.com/vscode/devcontainers/cpp:0-${VARIANT} as build_stage

# Set apt mirror
RUN sed -i 's/deb.debian.org/mirrors.ustc.edu.cn/g' /etc/apt/sources.list

# install kafka
RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get -y install --no-install-recommends libevent-dev librdkafka-dev \
    && echo "fin"

# prepare workspacke
WORKDIR /kafka-sample
# copy source codes
COPY ./ .
# build producer
RUN cd producer && mkdir build && cd build && cmake .. && make
# build consumer
RUN cd consumer && mkdir build && cd build && cmake .. && make

# running OS
FROM mcr.microsoft.com/vscode/devcontainers/cpp:0-${VARIANT}

# Set apt mirror
RUN sed -i 's/deb.debian.org/mirrors.ustc.edu.cn/g' /etc/apt/sources.list

# install kafka
RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get -y install --no-install-recommends libevent-dev librdkafka-dev \
    && echo "fin"

WORKDIR /app

COPY --from=build_stage /kafka-sample/consumer/build/consumer .
COPY --from=build_stage /kafka-sample/producer/build/producer .