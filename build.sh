#!/bin/bash

docker build -t mariadb ./mariadb
docker build -t wordpress ./wordpress
docker build -t nginx ./nginx