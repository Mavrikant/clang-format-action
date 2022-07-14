FROM ubuntu:22.04

RUN apt-get update && apt-get install -y \
        git \
        jq \
        wget \
        xz-utils \
        clang \
        lldb \
        lld \
        clang\
        clang-format --install-suggests

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
