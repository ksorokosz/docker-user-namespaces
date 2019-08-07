#!/bin/bash -ue
#
# Creates user for docker namespaces
#

groupadd -g 10000 dockerspace
useradd -r -ms /bin/bash -u 10000 -g 10000 dockerspace

groupadd -g 11000 dockeruser
useradd -r -ms /bin/bash -u 11000 -g 11000 dockeruser

usermod -a -G dockeruser dockerspace
