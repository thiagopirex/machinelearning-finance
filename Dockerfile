FROM tensorflow/tensorflow:latest-py3-jupyter

LABEL maintainer "thiagopirex@gmail.com"

ARG USER=jupyter
ARG USER_ID=802
ARG USER_GROUP=jupyter
ARG USER_GROUP_ID=802
ARG USER_HOME=/home/${USER}


RUN groupadd --system -g ${USER_GROUP_ID} ${USER_GROUP} && \
    useradd --system --create-home --home-dir ${USER_HOME} --no-log-init -g ${USER_GROUP_ID} -u ${USER_ID} ${USER}

RUN mkdir -p /tf/datasets && \
    chown -R ${USER}:${USER_GROUP} ${USER_HOME} && \
    chown -R ${USER}:${USER_GROUP} /tf

RUN pip install pandas plotly scikit-learn numpy 


WORKDIR ${USER_HOME}















