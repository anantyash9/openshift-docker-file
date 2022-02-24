FROM elasticsearch:8.0.0
ARG CUSTOM_UID=1000810000
ARG CUSTOM_GID=1000
USER root
RUN groupmod -g $CUSTOM_UID elasticsearch && \
    usermod -u $CUSTOM_GID elasticsearch && \
    chown -R $CUSTOM_UID:$CUSTOM_GID /usr/share/elasticsearch
USER elasticsearch