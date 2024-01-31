FROM dremio/dremio-oss:24.3.2
USER root
COPY dremio-env-profile /opt/dremio/conf/dremio-env
COPY --from=hengyunabc/arthas:latest /opt/arthas /opt/arthas
COPY jprofiler_linux_14_0.deb /opt/jprofiler_linux_14_0.deb
RUN dpkg -i /opt/jprofiler_linux_14_0.deb
COPY dremio-telemetry.yaml /opt/dremio/conf/dremio-telemetry.yaml
USER dremio