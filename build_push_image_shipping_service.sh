# build image from docker file 
docker build -t kadekchresna/shipping-service:latest .

# login to github package
echo $G_PAT | docker login ghcr.io -u kadekchresna --password-stdin

# rename the image matching the GitHub Container Registry 
docker tag kadekchresna/shipping-service:latest ghcr.io/kadekchresna/shipping-service:latest

# push the image to GitHub Container Registry
docker push ghcr.io/kadekchresna/shipping-service:latest