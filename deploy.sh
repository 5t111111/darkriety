#! /bin/bash -eu

SHA1=$1

# Deploy image to Docker Hub
docker push 5t111111/darkriety:$SHA1

# TODO: Deploy image to EC2 (ECS?)
