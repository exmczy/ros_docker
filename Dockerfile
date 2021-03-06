FROM nvidia/cudagl:10.0-base-ubuntu18.04


RUN apt update && \
      apt -y install sudo apt-utils

RUN apt install -y vim tmux x11-apps wget git curl
RUN apt install -y build-essential cmake python3-dev

RUN apt install -y lsb-release gnupg

CMD /bin/bash
