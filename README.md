# soa-g2-project

Wrapper repository for multiple git repositories.

This is material produced by Group 2 at LTU for the implementation of SOA web services.


## Getting started
Copy and paste this into a terminal. 

```bash
git clone https://github.com/weleoka/soa-g2-project.git
cd soa-g2-project
git clone https://github.com/weleoka/soa-g2-mock-services.git
git clone https://github.com/weleoka-machine/soa-g2-openapis.git
git clone https://github.com/simonblund/soa-g2-student-service.git
docker network create g2s-net-1 --subnet 172.24.24.0/24;
docker-compose up --build
echo "Done!"
```

### Networks
Due to some machines running VPN or other docker newtorks it is safest to create an independent subnet for this project. Before running docker-compose up make sure that the network exists on your host machine, which is what the command `docker network create g2s-net-1 --subnet 172.24.24.0/24` does.


# Target SOA overview
![](./SOA_overview_target.png)
