# Setting up a SQL Server in Docker

### Prerequisites
* Have a knowledge of Docker
* Have Docker installed
* Cloned this repository

### Creating the Docker Container
1. In a terminal (Bash/Shell/ect.) navigate to the directory with the <code>docker-compose.yml</code> file
2. Run the command <code>docker-compose -p mycomposer -f docker-compose.yml up -d</code>
  
  This will do many things:
  * Build a container for mysql_server and sqlpad
  * Run 2 sql files on the sql server that will create and populate a database and table
  * Set up all environmental variables for the sql server to allow remote connections
  * Set variables for sqlpad that will create a connection to our sql server automatically

3. Open a browser to <code>localhost:3000</code> to open sqlpad (may need to wait a few seconds for the script to finish running)

Login using the email address and password that was setup in the <code>my.env</code> in the <code>sqlpad_env_file</code> folder
* admin@sql.pad
* password123

### Resources
* https://medium.com/codex/docker-compose-explained-3954baf495ec
* https://github.com/byuibigdata/docker_guide/blob/main/docker-compose.yml
* https://dagshub.com/blog/setting-up-data-science-workspace-with-docker/
* https://github.com/byuibigdata/docker_guide
* https://docs.docker.com/compose/

#### Additional Resources for further Study
* Deploy a Docker container onto Heroku - https://medium.com/featurepreneur/how-to-deploy-docker-container-on-heroku-part-2-eaaaf1027f0b


###### Unsorted resources (Sorry! I'll sort them later.)
* https://towardsdatascience.com/connect-to-mysql-running-in-docker-container-from-a-local-machine-6d996c574e55
* https://stackoverflow.com/questions/47270505/er-host-not-privileged-docker-container-fails-to-connect-to-mariadb
* https://stackoverflow.com/questions/52815608/er-not-supported-auth-mode-client-does-not-support-authentication-protocol-requ
* https://stackoverflow.com/questions/60668357/run-command-in-docker-compose-yml
* https://docs.docker.com/engine/reference/commandline/compose_run/
* https://medium.com/codex/docker-compose-explained-3954baf495ec
* https://docs.docker.com/compose/production/
* https://docs.docker.com/compose/#features
* https://docs.docker.com/network/network-tutorial-host/
* https://www.tutorialspoint.com/docker/docker_networking.htm
* https://docs.docker.com/engine/reference/commandline/trust/
* https://docs.docker.com/engine/reference/commandline/network_connect/
* https://docs.docker.com/engine/reference/commandline/network_create/
* https://docs.docker.com/engine/reference/commandline/network/
* https://docs.docker.com/network/
* https://devops.stackexchange.com/questions/12493/how-to-connect-to-a-mysql-database-in-a-docker-container
* https://computingforgeeks.com/manage-mysql-postgresql-sql-server-using-sqlpad-editor/
* https://github.com/sqlpad/sqlpad/blob/master/docs/connections.md
* https://stackoverflow.com/questions/38086453/docker-compose-for-detached-mode
* https://stackoverflow.com/questions/39493490/provide-static-ip-to-docker-containers-via-docker-compose
* https://docs.docker.com/compose/networking/
* https://stackoverflow.com/questions/65691111/network-ip-address-for-docker-compose
* https://iamvickyav.medium.com/mysql-init-script-on-docker-compose-e53677102e48
* https://github.com/byuibigdata/docker_guide/blob/main/docker-compose.yml
* https://github.com/byuibigdata/docker_guide/blob/main/database.md
* https://github.com/byuibigdata/docker_guide/blob/main/docker-compose-personal.yml
* https://docs.docker.com/compose/compose-file/
* https://docs.docker.com/compose/reference/
* https://docs.docker.com/compose/gettingstarted/
* https://docs.docker.com/compose/reference/envvars/
* https://github.com/sqlpad/sqlpad/blob/master/config-example.env
* https://github.com/sqlpad/sqlpad/blob/master/docs/configuration.md
* https://hub.docker.com/r/sqlpad/sqlpad/#!
* 
* 
* 
* 
* 
* 

