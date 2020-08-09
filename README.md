This project is part of the [DockerHub image](https://hub.docker.com/u/wfjm)
build setup for tests of the CBM DAQ CI/CD pipelines under GitLab.

It creates the OS base image with all required _apt installable_ packages
for Ubuntu Focal (20.04 LTS) based tests.

It is used as base for the production image
[cbm-daq-ci-build-ub-focal](https://github.com/wamu2/cbm-daq-ci-build-ub-focal).

Installed packages and reasoning behind:
- development tools
  - `git cmake make`: obvious
  - `expect`: to get `unbuffer`
  - `wget curl`: to test http stuff
- C++ compilers and tools
  - `g++`: install the default g++ of the distribution
  - `clang-10` and friends: get the latest clang
- libraries
  - `zlib1g-dev`: required by `msgpack`
  - `libboost-dev`: obvious
  - `libboost-(chrono|system|timer)-dev`: required by `msgpack`
  - `libcpprest-dev`: provides http client/server **under test**
- Python interpreter and tools
  - `python3 python3-dev python3-setuptools python3-pip`: obvious
  - `mypy`: Python linter with static type checking
- Python modules provided by distribution
  - `python3-zmq`: zeromq binding
  - `python3-msgpack`: message pack binding
