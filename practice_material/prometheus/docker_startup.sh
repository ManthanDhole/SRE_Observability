# Brew service startup command for Prometheus
brew services start prometheus
brew services stop prometheus

# Docker Container Startup
docker run --rm -itd -p 9100:9100 

docker exec -it <container_id> /bin/sh