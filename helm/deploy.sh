#!/usr/bin/env bash

JITSI_REPO=${1:-jitsi}

helm template . \
--set jitsi-prosody.image.repository=$JITSI_REPO/prosody \
--set jitsi-jicofo.image.repository=$JITSI_REPO/jicofo \
--set jitsi-meet.image.repository=$JITSI_REPO/meet \
--set jitsi-video-bridge.image.repository=$JITSI_REPO/jvb