# codocker
Remote development environment

# How to use
```
docker pull hakunoir/codocker
docker run -p 8443:8443 -v /var/run/docker.sock:/var/run/docker.sock -v <project_name>/:/root/project --env PASSWORD="<password>" hakunoir/codocker
```
Open http://localhost:8443
