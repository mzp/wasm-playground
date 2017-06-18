FROM trzeci/emscripten:sdk-tag-1.37.3-64bit

RUN apt-get update && \
    apt-get install -y curl ca-certificates --no-install-recommends && \
    apt-get clean && \
    rm -rf /var/cache/apt/archives/* /var/lib/apt/lists/*

RUN curl https://sh.rustup.rs -sSf | sh -s -- -y

WORKDIR /work
