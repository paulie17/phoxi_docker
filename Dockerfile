FROM ubuntu:20.04 as phoxi_docker

# -- install PhoXi Control
RUN set -eux \
    && apt-get update -y \
    && apt-get install -y -q software-properties-common && apt-add-repository universe && apt-get install -y gdb \
    && apt-get update -y \
    # phoxicontrol dependencies (gui...)
    && apt install -y avahi-utils libqt5core5a libqt5dbus5 libqt5gui5 libgtk2.0-0 libssl1.1 libgomp1 libpcre16-3 libflann-dev libssh2-1-dev libpng16-16 libglfw3-dev xcb

ENV PHOXI_CONTROL_PATH="/opt/Photoneo/PhoXiControl"

COPY ./Installer/PhotoneoPhoXiControlInstaller-1.7.5-Ubuntu20-STABLE.run /
WORKDIR /
RUN ./PhotoneoPhoXiControlInstaller-1.7.5-Ubuntu20-STABLE.run --accept ${PHOXI_CONTROL_PATH}

RUN mkdir /root/.PhotoneoPhoXiControl

WORKDIR /
CMD ["/bin/bash"]

