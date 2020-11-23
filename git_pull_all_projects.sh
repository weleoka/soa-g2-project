#!/bin/bash
# Helper script to  proll changes in the project.
# See readme for relevant cloning and project setup.
#
# This script is of course only temporary, git submodules is the way to go.
#
# author: Weleoka <weleoka@gitlab.com>
# edited: 2020-11-22
set -euo pipefail

cd soa-g2-student-service
git pull
cd ..
cd soa-g2-examination-service
git pull
cd ..
cd soa-g2-app-middleware
git pull
cd ..
cd soa-g2-web-ui
git pull
cd ..
cd soa-g2-mock-services
git pull
cd ..
cd soa-g2-openapis
git pull
cd ..
echo "Done!"
echo
