FROM registry.fedoraproject.org/fedora-minimal

RUN   microdnf update && \
      microdnf -y install automake flex m4 gcc-c++ x3270-x11  xauth xorg-x11-apps libnsl unzip wget binutils && \
      cd /opt && \
      mkdir hercules && \
      cd hercules && \
      mkdir tk4 && \
      cd tk4 && \
      wget http://wotho.ethz.ch/tk4-/tk4-_v1.00.zip && \
      unzip tk4-_v1.00.zip && \
      rm  tk4-_v1.00.zip




EXPOSE      3270 8038
WORKDIR     /opt/hercules/tk4/
ENTRYPOINT  ["/opt/hercules/tk4/mvs"]
