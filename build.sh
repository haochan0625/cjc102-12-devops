set -ex
#set registry
USERNAME=596272009494.dkr.ecr.ap-northeast-1.amazonaws.com
# image name
IMAGE=cjc102-12-ecr-repo
docker build -t $USERNAME/$IMAGE:latest .
version=`cat VERSION`
echo "version: $version"
docker tag $USERNAME/$IMAGE:latest $USERNAME/$IMAGE:$version
docker push $USERNAME/$IMAGE:$version

