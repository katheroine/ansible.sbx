#!/bin/bash

docker build -t ssh-connectable . \
&& docker network create --driver bridge --subnet 192.0.2.0/24 my_custom_net \
&& docker run -dit --name container1 --net my_custom_net --ip 192.0.2.50 ssh-connectable \
&& docker run -dit --name container2 --net my_custom_net --ip 192.0.2.51 ssh-connectable \
&& docker run -dit --name container3 --net my_custom_net --ip 192.0.2.52 ssh-connectable

