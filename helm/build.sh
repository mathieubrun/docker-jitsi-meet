#!/usr/bin/env bash

export GITROOT="$(git rev-parse --show-toplevel)"
JITSI_REPO=${1:-jitsi}

cd $GITROOT/base
docker build --build-arg JITSI_REPO=$JITSI_REPO -t $JITSI_REPO/base .

cd $GITROOT/base-java
docker build --build-arg JITSI_REPO=$JITSI_REPO -t $JITSI_REPO/base-java .

cd $GITROOT/jicofo
docker build --build-arg JITSI_REPO=$JITSI_REPO -t $JITSI_REPO/jicofo .

cd $GITROOT/jigasi
docker build --build-arg JITSI_REPO=$JITSI_REPO -t $JITSI_REPO/jigasi .

cd $GITROOT/jvb
docker build --build-arg JITSI_REPO=$JITSI_REPO -t $JITSI_REPO/jvb .

cd $GITROOT/prosody
docker build --build-arg JITSI_REPO=$JITSI_REPO -t $JITSI_REPO/prosody .

cd $GITROOT/web
docker build --build-arg JITSI_REPO=$JITSI_REPO -t $JITSI_REPO/meet .