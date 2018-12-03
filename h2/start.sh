#!/bin/sh

docker run -d -p 1521:1521 -p 81:81 -v $(pwd)/data:/opt/h2-data --name=myh2 oscarfonts/h2
