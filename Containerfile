FROM registry.fedoraproject.org/fedora-toolbox:38

ARG name=tbn-fedora-toolbox-python

LABEL name="$NAME" \
      summary="Fedora toolbox container with python" \
      maintainer="Thorstein B. Nordby"

RUN dnf -y upgrade \
    && dnf -y install \
    python3-pip \
    git \
    && dnf clean all
