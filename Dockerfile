FROM gitpod/workspace-full

USER root

RUN apt-get -y install autoconf automake libtool build-essential gdb

RUN git clone https://github.com/Elektrobit/eb-solys-target-agent.git

RUN mkdir build \
  && cd build \
  && cmake eb-solys-target-agent -DTA_PLUGIN_log4j-plugin=true -DTA_PLUGIN_socket-reader-plugin=true -DTA_PLUGIN_resource-monitor-plugin=true -DCMAKE_BUILD_TYPE="Release" -DCMAKE_INSTALL_PREFIX=ta_binary \
  && make all \
  && make install	

