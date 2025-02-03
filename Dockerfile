FROM rust:latest

WORKDIR /usr/src/rust_template

COPY run_rust.sh /usr/local/bin/run_rust.sh
RUN chmod +x /usr/local/bin/run_rust.sh

ENTRYPOINT ["run_rust.sh"]