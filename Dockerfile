FROM debian:stretch
EXPOSE 8443
ENTRYPOINT [ "code-server",  "--port",  "8443" ]

# install docker
RUN apt-get update && apt-get install -y --no-install-recommends net-tools apt-transport-https ca-certificates curl gnupg2 software-properties-common
RUN curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add -
RUN add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable"
RUN apt-get update && apt-get install -y docker-ce

#install docker-compose
RUN curl -L https://github.com/docker/compose/releases/download/1.24.1/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
RUN chmod +x /usr/local/bin/docker-compose

# copy coder (code-server)
COPY --from=codercom/code-server:latest /usr/local/bin/code-server /usr/local/bin/code-server
