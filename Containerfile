FROM registry.fedoraproject.org/fedora-toolbox:38

ARG name=tbn-fedora-toolbox-python

LABEL org.opencontainers.image.source=https://github.com/thorsteinbn/fedora-toolbox-python
LABEL org.opencontainers.image.description="Fedora toolbox container with python"
LABEL org.opencontainers.image.licenses=Apache-2.0

RUN dnf -y upgrade \
    && dnf -y install \
    python3-pip \
    git \
    && dnf clean all
