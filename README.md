# A simple test repository for docker and possibly devops stuff

## How to run

First, build the image for the package by running this command in the root
directory:
```
make build
```
Then to run the container, run:
```
docker run -it --rm -p 5000:5000 docker-practice:latest
```

You can access the web app via http://0.0.0.0:5000/
