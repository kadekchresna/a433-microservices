
# build the image
docker build -t item-app:v1 .
# list images
docker images

# rename the image
docker tag item-app:v1 ghcr.io/kadekchresna/item-app:v1

# login to github package using PAT which configured locally
echo $G_PAT | docker login ghcr.io -u kadekchresna --password-stdin

# push the image to github package
docker push ghcr.io/kadekchresna/item-app:v1
