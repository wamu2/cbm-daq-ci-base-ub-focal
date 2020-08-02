FROM ubuntu:focal

RUN apt-get update \
    && DEBIAN_FRONTEND=noninteractive apt-get install -y \
          git cmake make \
          g++ \
          clang-10 clang-format-10 clang-tidy-10 \
          zlib1g-dev \
          libboost-dev \
          libboost-chrono-dev libboost-system-dev libboost-timer-dev \
          libzmq3-dev libcpprest-dev \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

CMD bash
