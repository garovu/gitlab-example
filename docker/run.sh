#!/bin/bash

sudo docker run --detach \
  --hostname gitlab.local \
  --env GITLAB_OMNIBUS_CONFIG="external_url 'http://gitlab.local'" \
  --publish 443:443 --publish 80:80 --publish 22:22 \
  --name gitlab \
  --restart always \
  --volume ./config:/etc/gitlab \
  --volume ./logs:/var/log/gitlab \
  --volume ./data:/var/opt/gitlab \
  --shm-size 256m \
  gitlab/gitlab-ce:17.5.1
