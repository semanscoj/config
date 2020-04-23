FROM ubuntu
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get -y update && apt-get -y install tmuxinator silversearcher-ag ctags git tmux vim-gtk gcc g++ ruby rbenv python-dev python3 python3-dev cmake && dpkg-reconfigure --frontend noninteractive tzdata
COPY docker-entrypoint.sh /usr/local/bin/
RUN ln -s /usr/local/bin/docker-entrypoint.sh /
ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["/bin/bash"]
