FROM andrewosh/binder-base

MAINTAINER Mark Wicks <mark.wicks@hobsons.com>

USER root

RUN apt-get update
RUN apt-get install -y graphviz && apt-get clean

USER main

RUN pip install -r requirements.txt

RUN jupyter-nbextension install rise --py --sys-prefix
RUN jupyter-nbextension enable rise --py --sys-prefix

