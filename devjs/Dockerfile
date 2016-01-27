FROM node:4


# RUN ["apt-get", "update"]
# RUN ["apt-get", "install", "-y", "vim"]
RUN apt-get update -y
RUN apt-get install -y vim
RUN apt-get install -y net-tools
RUN apt-get install -y telnet

RUN export NPM_CONFIG_LOGLEVEL=warn
RUN npm config set loglevel warn
RUN npm install -g gulp --loglevel=warn


# git helpers

RUN curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh -o ~/.git-prompt.sh


RUN echo '\nsource ~/.git-prompt.sh\n' >> ~/.bashrc
RUN echo 'export PS1="\u@\h \W\[\033[32m\]\$(__git_ps1  \" (%s)\")\[\033[00m\] $ "' >> ~/.bashrc


RUN curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -o ~/.git-completion.sh
RUN echo '\nsource ~/.git-completion.sh' >> ~/.bashrc