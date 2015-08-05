FROM ubuntu:trusty

ENV DEBIAN_FRONTEND noninteractive

# Usual update / upgrade
RUN apt-get update
RUN apt-get upgrade -q -y
RUN apt-get dist-upgrade -q -y

# Let our containers upgrade themselves
RUN apt-get install -q -y unattended-upgrades

# Install Ethereum
RUN apt-get install -q -y software-properties-common
RUN add-apt-repository ppa:ethereum/ethereum
RUN apt-get update
RUN apt-get install -q -y geth solc

EXPOSE 8545
EXPOSE 30303

CMD ["usr/bin/geth", "--rpc", "--rpcaddr 0.0.0.0"]
