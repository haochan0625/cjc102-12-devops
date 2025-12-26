#!/bin/bash

aws ecr get-login-password --region ap-northeast-1 | docker login --username AWS --password-stdin 596272009494.dkr.ecr.ap-northeast-1.amazonaws.com

if [ `docker images | grep 596272009494.dkr.ecr.ap-northeast-1.amazonaws.com/cjc102-12-ecr-repo | wc -l`  = 1 ]
then
        docker rmi 596272009494.dkr.ecr.ap-northeast-1.amazonaws.com/cjc102-12-ecr-repo
        docker pull 596272009494.dkr.ecr.ap-northeast-1.amazonaws.com/cjc102-12-ecr-repo:latest
else
        docker pull 596272009494.dkr.ecr.ap-northeast-1.amazonaws.com/cjc102-12-ecr-repo:latest
fi
