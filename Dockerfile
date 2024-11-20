FROM debian:bookworm-slim

ARG DEBIAN_FRONTEND=noninteractive

RUN apt update
RUN apt install -y python3
RUN apt install -y python3-pip
RUN apt install -y python3-venv
RUN apt install -y vim

RUN useradd -m testuser

WORKDIR /home/testuser

USER testuser
