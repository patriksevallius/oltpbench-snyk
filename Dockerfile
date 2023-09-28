FROM openjdk:22-ea-15-jdk-slim-bullseye
COPY . /usr/src/oltpbench
WORKDIR /usr/src/oltpbench
RUN .deploy/install.sh
ENV PATH="/usr/local/bin/apache-ant-1.9.15/bin:$PATH"
ENTRYPOINT [".deploy/main.sh"]
