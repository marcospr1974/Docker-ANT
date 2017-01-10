#!/bin/bash

docker run -d \
	-p 2222:22 \
	--name qvlgit00 \
	-v /opt/docker/qvlgit00/git-server/keys:/git-server/keys \
	-v /opt/docker/qvlgit00/git-server/repo:/git-server/repo \
	-h qvlgit00 \
	marcospr1974/alpine-git
