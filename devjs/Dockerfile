FROM node:4

RUN git clone https://github.com/jahtalab/devenv.git ~/tmp/devenv

RUN chmod u+x -R ~/tmp/

RUN ~/tmp/devenv/linux_prepare.sh
RUN ~/tmp/devenv/prepare.sh
