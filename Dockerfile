FROM ubuntu

WORKDIR /root
RUN mkdir -p projects/hello_world

RUN rm -rf /etc/localtime
RUN ln -s /usr/share/zoneinfo/Europe/Bucharest /etc/localtime
RUN echo 'Europe/Bucharest' > /etc/timezone

RUN apt-get -y update
RUN apt-get install -y vim curl build-essential
#colorscheme delek

# RUN curl --proto '=https' --tlsv1.2 https://sh.rustup.rs -sSf | sh
RUN curl --proto '=https' --tlsv1.2 https://sh.rustup.rs -sSf | sh -s -- -y
RUN . "$HOME/.cargo/env"