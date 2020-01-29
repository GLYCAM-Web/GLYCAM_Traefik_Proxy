## GLYCAM Traefik Proxy

# This is the git repository for the GLYCAM Traefik Reverse Proxy.

It is inspired by the resources below.  It is somewhat simpler because it is
tuned for use with GLYCAM-Web.

BashfulBandit's Docker-Traefic repo:   https://github.com/BashfulBandit/docker-traefik

A useful post in the Conainous community forums:  https://community.containo.us/t/swarm-mode-giving-404/2746/2

# Files contained herein:

- docker-compose.traefik.swarm.https.yml
- docker-compose.traefik.swarm.nohttps.yml
- logs
- start.sh
- start-nohttps.sh
- stop.sh
- README.md
- test-whoami.sh


# docker-compose.traefik.swarm.https.yml
# docker-compose.traefik.swarm.nohttps.yml

These are the YAML files used by Docker-Compose to deploy the 
Traefik Reverse Proxy. It is configured to be used in our Docker Swarm.

As the names imply, one contains all information except https.  The 
other one adds https capabilities.  Docker stack deploy allows for the
use of multiple compose files.

# logs/ 

The directory storing the logs from Traefik.  

# logs/access.log 

All of the web traffic access logs from Traefik.  

# logs/traefik.log 

All of the logs coming from Traefik on what and how it is working. 

Currently, this is set to produce debugging logs, so the file can get large. 

In productionl it will be worth changing the level to ERROR to limit the size.

# start.sh
# start-nohttps.sh

These scripts start the GLYCAM Traefik Reverse Proxy and the Docker
Overlay Network for the Traefik Service.  The 'nohttps' version does not
attempt to add tls for https.  The plain 'start.sh' adds https.

# stop.sh

This is a script to stop the GLYCAM Traefik Reverse Proxy and remove the 
Docker Overlay Network used by the Traefik Service.

# README.md

This file.

## HOW-TO

git clone https://github.com/GLYCAM-Web/GLYCAM_Traefik_Proxy.git

cd GLYCAM_Traefik_Proxy

bash start.sh

