ARG KONG_IMAGE=kong:3.9.4
FROM ${KONG_IMAGE}
USER root
COPY kong/plugins/datakit-log /usr/local/share/lua/5.1/kong/plugins/datakit-log
ENV KONG_PLUGINS=bundled,datakit-log
USER kong
