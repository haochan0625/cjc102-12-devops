#!/bin/bash
docker run -p 80:5000 --name flask-web -d 596272009494.dkr.ecr.ap-northeast-1.amazonaws.com/cjc102-12-ecr-repo:latest

sleep 20s
