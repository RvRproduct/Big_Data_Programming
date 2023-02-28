# Intro to Docker
- Docker is an application that allows you to create containers for applications or software. It puts everything an app needs to run into a simple image.

- Docker has a platform similar to GitHub where people can push their apps and others can pull them.

- Docker allows for consistent performance because all dependencies are tested before pushing.

- Docker images can be deployed in a cloud enviroment such as Azure to host a website.

# How does it work?

![](res/image1.jpg)

## Dockerfile
- It starts with writing a dockerfile. This is a text file, __do not add extension__ only "Dockerfile", that contains the base information the app needs to run.

- In most cases, we do not need to worry about this because the images we will use are already made for us.

```
FROM python:3.10

COPY . /app

RUN pip install -r requirements.txt

CMD ["python3.10","iris.py"]
```

#### FROM
- The FROM clause takes an exsisting image from dockerhub as the base image to build your app off of.

- It is good practice to pick the most basic software your app needs

#### COPY
- This is where we add files we need inside the container. 

- The "." selects everything inside the directory the dockerfile is located, then adds them to /app directory in the container.

#### RUN
- This is a command that is run when docker builds the image. It is usually the command to install other software you need for the app.

#### CMD
- When the container is done being built, this is the commmand that will deploy whatever you want it to do.

### `docker build {OPTIONS}` 
- This is the command that initializes the building of the image from the dockerfile.
- This is also where you can name you own custom image.
- It is important to run this command in the directory with the dockerfile

## Images
- A docker image is what is created from the dockerfile.
- This is the packaged software that can be downloaded and ran quickly.
- Think of it as a template for the app.

#### Pull and Push
- `docker pull {OPTIONS}` is used to pull exsisting images from dockerhub
- `docker push {OPTIONS}` if you created an image from a dockerfile, this command is used to push it to dockerhub

## Containers 
- When you pull an image from dockerhub, you can run it to create a container.
- A new container is created and it becomes your own software.
- It is ran side by side to your operating system. Extremely lightweight

#### `docker run {OPTIONS}`
- This command creates a __new__ container from an exsisting image. 
- It will also automatically start running
- This is where some important flags or commands are needed to customize an image.
  - We may want to attach some files to the container
  - docker run --name {NAME} -v {PATH/TO/VOLUME}:{PATH/IN/CONTAINER} {IMAGE NAME}
  - The path for the container workspace will be different and will require some research

#### `docker stop {OPTIONS}`
- This command stops a container

#### `docker start {OPTIONS}`
- This commands start an exsisting container
- We will want to use the `-i` flag in most cases. This allows us to see what is happening.

## Best Practices and Commands

#### `docker ps {OPTIONS}`
- This command will list containers being run currently
- Adding the `-a` will list all containers 

#### `docker rm {OPTIONS}`
- This will remove the container with the name entered

#### `docker exec {OPTIONS}`
- This is a powerful command that is useful when you need to enter into the container.
- You may need to find the exact command your container needs to run.

## VS Code and Docker
- In order to use docker with VS code you need to download two extensions.
  - "Docker" and "Remote - Containers"

# Docker Download Instructions

### 1. Download Docker Desktop

- Download Docker Desktop from https://www.docker.com/products/docker-desktop/ according to your computer's OS.

- Sign up and create a Docker ID at https://hub.docker.com/signup
    - Docker will send a message to the e-mail you used to sign up and will ask you to confirm your account.

### 2. Download Linux Kernel (for Windows)

If you are running a Windows machine, you will probably experience an error when trying to run Docker Desktop that will say something along the lines of "Docker Stopping..." To fix this issue, you will need to download the WSL2 linux kernel.

- Navigate yourself to this link- https://docs.microsoft.com/en-us/windows/wsl/install

- Scroll down to step 4, and and click the hyperlink that will allow you to download the latest package.

- Once you have gone through the download process, --RESTART YOUR COMPUTER.-- Docker Desktop should boot up just fine. You will then be able to sign into Docker Desktop with your Docker ID.

### 3. Complete a Test Run

- To make your Docker Engine start running, open Docker Desktop.
    - You can also make sure that the Docker logo in the tray (Windows) or menu bar (macOS) indicates that Docker is running

- Navigate to your command line. Type "docker info". You should be provided with information concerning your version of Docker.

- Let's pull an image. In your command line, type, "docker pull jarreed0/ml:irismlapp". This should pull the image that we are going to be working with in class.

- To view your containers, type "docker images". It'll give an overview of the images you have available. REPOSITORY refers to the repository where this image originated. TAG refers to the version of this image.

- To run a new image, the syntax is, "docker run -ti *REPOSITORY*:*TAG* bash". Essentially, you reference the repository and tag of the image you want to run. "-ti" is a flag that conveniently let's us play with the running image in the termina. To run our newest image, type "docker run -ti "jarreed0/ml:irismlapp bash". You are now running the image! Your command line directory should say something like, "root@6b2f6a2ebe11:/#".
    - macOS computers with a silicon chip may receive a warning concerning the image platform. To fix this, type "docker run --platform linux/amd64 -ti "jarreed0/ml:irismlapp bash". This should fix the issue.

- To stop the image from running, type "exit".
