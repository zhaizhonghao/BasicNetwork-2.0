

function removeUnwantedImages() {
  DOCKER_IMAGE_IDS=$(docker images | awk '($1 ~ /dev-peer.*/) {print $3}')
  if [ -z "$DOCKER_IMAGE_IDS" -o "$DOCKER_IMAGE_IDS" == " " ]; then
    echo "---- No images available for deletion ----"
  else
    docker rmi -f $DOCKER_IMAGE_IDS
  fi
}

rm -rf channel/crypto-config
rm -f channel/*.tx
rm -f channel/*.block
rm -f channel/*.yaml
rm -f channel-artifacts/*.block
rm -f *.tar.gz
rm -f docker-compose.yaml
docker rm -f $(docker ps -a -q)
rm log.txt
docker volume prune -f
rm -f explorer/connection-profile/*.json
removeUnwantedImages
rm -rf explorer/crypto-config

