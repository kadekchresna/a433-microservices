# build image from docker file 
docker build -t kadekchresna/karsajobs-ui:latest .

# login to github package
echo $CR_PAT | docker login ghcr.io -u kadekchresna --password-stdin

# rename the image matching the GitHub Container Registry 
docker tag kadekchresna/karsajobs-ui:latest ghcr.io/kadekchresna/karsajobs-ui:latest

# push the image to GitHub Container Registry
docker push ghcr.io/kadekchresna/karsajobs-ui:latest