# Lewbuntu
# A docker image that has all the tools that I have created
# Github:https://www.github.com/lewisevans2007/lewbuntu_docker
# Licence: GNU General Public License v3.0
# By: Lewis Evans

FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
    git \
    python3 

COPY fs/bin /bin
COPY fs/etc /etc
COPY fs/root /root

WORKDIR /root

CMD ["bash"]