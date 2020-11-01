# soa-g2-project

Wrapper repository for multiple git repositories.

This is material produced by Group 2 at LTU for the implementation of SOA web services.


# Git submodules
A good introduction to submodules: https://devconnected.com/how-to-add-and-update-git-submodules/

Submodules may be added as an internet URL, which is better than a path. Secondly they can be added using an SSH path like `git@github.com:simonblund/soa-g2-student-service.git`, however, when cloning the repository and all the submodules all the users may not be using SSH keys for access so best prctice seems to be to add submodules simply by their https url: `https://github.com/simonblund/soa-g2-student-service.git`.



# Docker-compose running



## Networks
Due to some machines running VPN or other docker newtorks it is safest to create an independent subnet for this project. Before running docker-compose up make sure that the network exists on your host machine.

docker network create g2s-net-1 --subnet 172.24.24.0/24 



