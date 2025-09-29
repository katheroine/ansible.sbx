#!/bin/bash

containers=("container1" "container2" "container3")

for container in "${containers[@]}"
do
  docker stop "$container" && docker rm "$container"
done

docker network rm my_custom_net
docker image rm ssh-connectable

