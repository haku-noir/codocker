# codocker
Remote development environment

# How to use
```
docker pull hakunoir/codocker
docker run --name codocker --publish 8443:8443 --volume /var/run/docker.sock:/var/run/docker.sock --volume <project_path>:/root/project --env PASSWORD="<password>" --env PROJECT_PATH="<project_path>" hakunoir/codocker
```
Open http://localhost:8443
