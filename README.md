# soa-g2-project

Wrapper repository for multiple git repositories.

This is material produced by Group 2 at LTU for the implementation of SOA web services.


- WORK in PROGRESS -



# Docker-compose running



## Networks
Due to some machines running VPN or other docker newtorks it is safest to create an independent subnet for this project. Before running docker-compose up make sure that the network exists on your host machine.

docker network create g2s-net-1 --subnet 172.24.24.0/24 




# Target SOA overview
![](./SOA_overview_target.png)
