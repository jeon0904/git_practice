FROM apache/nifi:1.14.0

USER root

RUN wget https://repo.anaconda.com/miniconda/Miniconda3-py39_4.9.2-Linux-x86_64.sh -O conda-install.sh  \
    && bash conda-install.sh -b -p /opt/conda

USER nifi

ENV PYTHONPATH /opt/conda
ENV PATH $PATH:$PYTHONPATH/bin