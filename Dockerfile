FROM ubuntu:focal

RUN apt-get update \
    && DEBIAN_FRONTEND=noninteractive apt-get install -y \
          git cmake make \
          g++ \
          clang-10 clang-format-10 clang-tidy-10 \
          zlib1g-dev \
          libboost-dev \
          libboost-chrono-dev libboost-system-dev libboost-timer-dev \
          libcpprest-dev \
          python3 python3-dev python3-setuptools python3-pip \
          mypy \
          python3-zmq python3-msgpack \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

CMD bash
