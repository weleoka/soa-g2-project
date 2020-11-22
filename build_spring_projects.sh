#!/bin/bash
# Helper script to build the Spring boot apps in the project.
# See readme for relevant cloning and project setup.
#
# author: Weleoka <weleoka@gitlab.com>
# edited: 2020-11-22
set -euo pipefail

cd soa-g2-student-service
./docker_build.sh
cd ..
cd soa-g2-examination-service
./docker_build.sh
cd ..
cd soa-g2-app-middleware
./docker_build.sh
cd ..
echo "Done!"
echo

