docker stack deploy \
	--compose-file docker-compose.traefik.swarm.nohttps.yml \
	--compose-file docker-compose.traefik.swarm.https.yml \
	traefik
