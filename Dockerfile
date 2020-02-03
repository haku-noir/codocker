FROM debian:stretch
EXPOSE 8443
ENTRYPOINT [ "code-server",  "--port",  "8443" ]

# copy coder (code-server)
COPY --from=codercom/code-server:latest /usr/local/bin/code-server /usr/local/bin/code-server
