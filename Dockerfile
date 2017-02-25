FROM debian:jessie

# A set of preparatory instructions
RUN set -x && \
    apt-get update -y && apt-get install -y \
      git build-essential httperf \
      man gawk gnuplot && \
    git clone https://github.com/menavaur/Autobench.git /root/Autobench && \
    cd /root/Autobench && \
    make && make install && \
    apt-get clean && rm -rf /var/lib/apt/lists

# default command to reattach istance
CMD ["/bin/bash"]
