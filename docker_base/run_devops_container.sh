#!/bin/bash

IMAGE_NAME="devops-lab-base"
CONTAINER_NAME="devops-test"

docker run --rm -it --name "$CONTAINER_NAME" "$IMAGE_NAME"
