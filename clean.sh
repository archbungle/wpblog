#!/bin/bash
#cleanup all stall docker containers from the past installs
docker stop wordpress
#traiano@gmail.com
docker stop wordpressdb
docker stop wordpress
docker rm wordpressdb
docker rm wordpress
