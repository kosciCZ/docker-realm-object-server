#!/bin/sh

DIRECTORY=/home/node/server/project

if [ -d "$DIRECTORY" ]; then
	echo "Starting the server..."
	cd /home/node/server/project  && npm start
else
	echo "Initing project"
	cd /home/node/server/ && /home/node/node_modules/.bin/ros init project && cd project && npm start
fi