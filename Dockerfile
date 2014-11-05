FROM ubuntu

MAINTAINER Jonas Nicklas <jonas.nicklas@gmail.com>

RUN apt-get update && apt-get install -y curl build-essential libssl-dev

RUN curl -s https://static.rust-lang.org/rustup.sh | sudo sh

COPY . /var/app

WORKDIR /var/app

RUN cargo build --release

CMD cargo run --release --verbose
