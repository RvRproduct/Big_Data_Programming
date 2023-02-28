# Docker MySQL Tutorial
A tutorial on how to create and use a mysql image through docker.

you can follow along with this tutorial or with the slideshow below.
--LINK TO SLIDESHOW--

## Prerequisites
For this tutorial it is assumed that you already have docker setup on 
your computer and know the basics of how to use it.

## Step 1 - Creating a MySQL Container
In this step we will go over how to pull a mysql image to docker and make 
a container from it.

### Making the Image
This step isn't necessary with the current docker desktop, because it will 
automatically do this when you attempt to create a container.

First, you will have to pull mysql to docker. You can do this py using 
the following code in your terminal.

```
docker pull mysql
```

This will create a mysql image to use in creating your container.

### Making the Container

Next, we have to set up the container. This step is fairly simple. Once you have docker setup on your device, 
open your terminal and use the code below to create your image.

```
docker run --name [your-container-name] -e MYSQL_ROOT_PASSWORD=[your mysql password] -d mysql:[tag]
```

Replace [your-container-name] with the desired name for your mysql container

Replace [your mysql password] with the desired mysql root password

And replace [tag] with the version of mysql you'd like to use. Below are the available versions 
you can use.  

- 8.0.29-oracle, 8.0-oracle, 8-oracle, oracle
- 8.0.29, 8.0, 8, latest, 8.0.29-debian, 8.0-debian, 8-debian, debian
- 5.7.38-oracle, 5.7-oracle, 5-oracle
- 5.7.38, 5.7, 5, 5.7.38-debian, 5.7-debian, 5-debian
- latest

You can also leave :[tag] off completely to use the default tag

For this example, we will be using the code below.

```
docker run --name mysql-container -e MYSQL_ROOT_PASSWORD=mysqlpass -d mysql:latest
```

### Confirming

You can use ```docker ps``` in your terminal to confirm that your container is runing

you should get something similar to the table below

```
CONTAINER ID   IMAGE          COMMAND                  CREATED          STATUS          PORTS                 NAMES
c0nta1n3r1d0   mysql:latest   "docker-entrypoint.s…"   1 minutes ago    Up 1 minutes    3306/tcp, 33060/tcp   mysql-container
```

## Step 2 - Using your container
In this step we will go over how to open your new container and gain access to mysql.

To open the container we can use the code below

```
docker exec -it [your-container-name] mysql -uroot -p
```
or
```
docker exec -it [your-container-name] mysql -uroot -p[your mysql password]
```

We'll run through this step by step

docker - This is specifying to our terminal that we want to use docker

exec - This tells docker that we want to execute an already existing container

-it - This is actually a combination of 2 commands -i and -t. 
- -i specifies that we want an interactive environment,
- -t specifies that we want that environment to be tty(teletypewriter)

[your-container-name] - This is the name you gave to your container earlier

mysql - This tells docker to use the mysql image

-uroot - This specifies that we want to have a mysql session that connects to the root

-p -This tells the command that a password is required. 
- If you leave it empty, it will prompt you for the password in a private password protector. 
- If you put your password immediately after, it will run it with that password, but having it in the command could be dangerous if you're accessing private info.

Because we won't be using any private or dangerous data for this example and we dont care if others can access this password, we will input our password with the command. But in any professional setting we recommend not doing so, and using the provided password protective option.

Below is the command to access our container.

```
docker exec -it mysql-container mysql -uroot -pmysqlpass
```

Once we have that done, our terminal will open into a mysql command prompt which we can use normal mysql commands on.

When we are done with mysql, we can input the command below.

```
exit;
```

this will exit the mysql interactive environment and send us back to the terminal.

## Step FIN - Stopping your container
Now that we are done using our container, we can stop it so that it wont use any resources on our computer. Keep in mind you will have to restart it to use mysql again.

```
docker stop [your-container-name]
```

For our example, we will use the following code in our terminal

```
docker stop mysql-container
```

