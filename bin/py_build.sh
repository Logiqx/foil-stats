# Project Env
. $(dirname $0)/env.sh

# Determine Tag
IMAGE_NAME=$PROJ_NAME
IMAGE_TAG=tmp

# Docker Build
DOCKER_BUILDKIT=1 docker build . --build-arg LOGIQX_DEBUG -t $IMAGE_NAME:$IMAGE_TAG

# Clear pycache
rm -f $PROJ_DIR/python/__pycache__/*.*.pyc
