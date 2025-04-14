# build image from docker file 
docker build -t kadekchresna/karsajobs:latest .

# login to github package
echo $CR_PAT | docker login ghcr.io -u kadekchresna --password-stdin

# rename the image matching the GitHub Container Registry 
docker tag kadekchresna/karsajobs:latest ghcr.io/kadekchresna/karsajobs:latest

# push the image to GitHub Container Registry
docker push ghcr.io/kadekchresna/karsajobs:latest