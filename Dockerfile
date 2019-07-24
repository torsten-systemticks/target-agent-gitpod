FROM gitpod/workspace-full

USER root

RUN apt-get -y install autoconf automake libtool build-essential gdb

RUN git clone https://github.com/Elektrobit/eb-solys-target-agent.git

