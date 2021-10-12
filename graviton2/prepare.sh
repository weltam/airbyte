sudo apt install jq

docker ps -q | xargs docker stop

docker rmi -f $(docker images | grep airbyte | tr -s ' ' | cut -d ' ' -f 3)

# docker rmi $(docker images --filter=reference="*:airbyte*" -a)