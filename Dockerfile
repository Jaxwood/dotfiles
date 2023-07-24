FROM ubuntu:focal AS base
WORKDIR /usr/local/bin
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y software-properties-common curl git build-essential sudo && \
    apt-add-repository -y ppa:ansible/ansible && \
    apt-get update && \
    apt-get install -y curl git ansible build-essential && \
    apt-get clean autoclean && \
    apt-get autoremove --yes

FROM base AS jlo
ARG TAGS

RUN useradd -m jlo && echo "jlo:pwd" | chpasswd && adduser jlo sudo
RUN adduser jlo sudo
USER jlo
WORKDIR /home/jlo

FROM jlo
COPY --chown=jlo . .
CMD ["sh", "-c", "ansible-playbook --tags $TAGS local.yml"]

