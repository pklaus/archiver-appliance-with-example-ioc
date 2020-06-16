#!/bin/bash

# Open the management page in 20s from now:
(sleep 20; firefox "http://localhost:17665/mgmt/ui/index.html") &

docker-compose up
