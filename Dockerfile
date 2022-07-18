FROM ubuntu:latest

RUN set -x && \
    apt-get update && \
    apt-get install -y git cmake ncurses-dev curl tar wget && \
    cd /root && \
    git clone https://github.com/vim/vim.git && \
    cd vim/src && \
    make && \
    make install && \
    cd /root && \
    wget https://github.com/akheron/jansson/releases/download/v2.14/jansson-2.14.tar.gz -O jansson.tar.gz && \
    tar -zxvf jansson.tar.gz && \
    cd jansson-2.14 && \
    ./configure && \
    make && \
    make install

 COPY ./setup.sh /tmp/

 RUN bash /tmp/setup.sh
