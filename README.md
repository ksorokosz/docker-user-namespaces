# Docker user namespaces

Namespace are used to separate docker users from host users and set permission in a more secure manner.

## Enabling docker namespaces

* Create /etc/docker/daemon.json file with entry:

        {
            "userns-remap": "<user>"
        }

as in etc/docker/daemon.json in this repository

* Create subordinates users and groups basing on etc/subuid and etc/subgid respectively

    * Create user that will correspond to docker root e.g 10000 (in docker uid: 0)
    * Create user that will correspond to docker user e.g 11000 (in docker uid: 1000)

* Restart dockerd service:
  $ sudo service docker Restart

## Create directory owned by the user that will be used inside docker e.g 11000 for docker user 10000

    See docker.sh script

## Build and run docker with the volume mounted

    Run docker.sh script

