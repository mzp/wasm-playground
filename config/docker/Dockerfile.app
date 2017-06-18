FROM trzeci/emscripten:sdk-tag-1.37.3-64bit

RUN apt-get update && \
    apt-get install -y curl ca-certificates build-essential git --no-install-recommends && \
    apt-get clean && \
    rm -rf /var/cache/apt/archives/* /var/lib/apt/lists/*

RUN /emsdk_portable/emsdk install binaryen-master-64bit

RUN curl https://sh.rustup.rs -sSf | sh -s -- -y

ENV PATH="/emsdk_portable/binaryen/master_64bit_binaryen/bin/:/root/.cargo/bin:$PATH"

RUN rustup default nightly

RUN rustup target add wasm32-unknown-emscripten

RUN mkdir -p /root/.emscripten_ports/binaryen/ && \
 ln -s /emsdk_portable/binaryen/master_64bit_binaryen /root/.emscripten_ports/binaryen/binaryen-version_28

ENV USER root

WORKDIR /work
