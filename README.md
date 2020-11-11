# soa-g2-project

Wrapper repository for multiple git repositories.

This is material produced by Group 2 at LTU for the implementation of SOA web services.


## Getting started
Copy and paste this into a terminal.

HTTPS cloning:
```bash
git clone https://github.com/weleoka/soa-g2-project.git
cd soa-g2-project
git clone https://github.com/weleoka/soa-g2-mock-services.git
git clone https://github.com/weleoka/soa-g2-web-ui.git
git clone https://github.com/weleoka-machine/soa-g2-openapis.git
git clone https://github.com/simonblund/soa-g2-student-service.git
cd soa-g2-student-service
./docker_build.sh
cd ..
docker network create g2s-net-1 --subnet 172.24.24.0/24;
docker-compose up --build
echo "Done!"
```

SSH cloning:
```bash
git clone git@github.com:weleoka/soa-g2-project.git
cd soa-g2-project
git clone git@github.com:weleoka/soa-g2-mock-services.git
git clone git@github.com:weleoka/soa-g2-web-ui.git
git clone git@github.com:weleoka-machine/soa-g2-openapis.git
git clone git@github.com:simonblund/soa-g2-student-service.git
cd soa-g2-student-service
./docker_build.sh
cd ..
docker network create g2s-net-1 --subnet 172.24.24.0/24;
docker-compose up --build
echo "Done!"
```


## The student-service build process as a service
Student service can be built using `/soa-g2-student-service/docker_build.sh`, which is recommended. It can also be done running the docker compose service, and uncommenting the service in `docker_compose.yml`, but then using the command `UID=${UID} GID=${GID} docker-compose up --no-deps student-service-builder`. You may have an issue with UID being a read-only variable in bash. 

To always run the build process with docker-compose and then afterwards starting the JRE container is not practical as the build process takes so long to return.


### Networks
Due to some machines running VPN or other docker newtorks it is safest to create an independent subnet for this project. Before running docker-compose up make sure that the network exists on your host machine, which is what the command `docker network create g2s-net-1 --subnet 172.24.24.0/24` does.


# Developer CI an CD
Some of the repositories use GitHub Actions to build artifacts, run tests etc. See more about the workflows at github here: https://github.com/docker/build-push-action#handle-tags-and-labels


# Target SOA overview
![](./SOA_overview_target.png)
