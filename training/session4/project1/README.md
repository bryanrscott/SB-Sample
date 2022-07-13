# Solomon Islands Training

## [Session 4](../README.md) - Project 1

Using a simple project to demonstrate:
- Markup for a README.md file
- simple docker compose file for a Microsoft SQL server service

Tasks
- [x] Generate a README.md file for this session
- [x] Everyone checkout and create a README.md and commit the changes.
- [ ] Copy the project1 directory to your directory and commit the changes.
- [ ] Review the *docker-compose.yml* file and to identify the services provided, confirm the SQL Server Version
- [ ] Connect to database using local MS SQL Server Management Studio
- [ ] Upgrade SQL Server version
- [ ] Enable .env

Reviewing the Docker Compose YAML file (*docker-composer.yml*)
- Notice the LICENSE.md file - clear and open.  
- Just one service MS SQL SERVER 2019 and one volume to store the data.
- Set some parameters to customise the server
- Ports is defining port forwarding as such "service port : localhost port" so in this instance 

To start containers, open the command prompt, navigate to the training folder *~/SB-Sample/training/session4/project1/* then type the following command:
```
$ docker-compose up -d
```

Once finished starting up you should be able to connect to the system using the details from the *docker-compose.yml* file. Use SQL Management Studio or your preferred database client to connect.

To Stop Containers 
```
$ docker-compose down
```
Alternatively you can use the docker dashboard and the stop button.

You can also use the dashboard to do other tasks, remove containers and volumes
https://www.digitalocean.com/community/tutorials/how-to-remove-docker-images-containers-and-volumes
```
docker ps -a | grep "pattern" | awk '{print $1}' | xargs docker rm
docker ps -a
docker volume ls
docker volume rm project1_database-data
```

##### DEMO : Docker Dashboard
##### DEMO : Upgrade in place to SQL Server 2022.
##### DEMO : Remove volume

.env files are places you can define parameters that are local.   Importantly they generally should not be committed to git, but should be in the .gitignore list.

##### DEMO : GITHUB repository settings .  manual edit of .gitignore

.env files are a known place to store environmental variables.   You can then reference the variable in the docker-compose.yml file.   An example is DB_PASSWORD.   copy .env.sample to .env, edit .env and restart your environment (including the volume clearing).





This page was built using [GitHub Markup](https://docs.github.com/en/get-started/writing-on-github/getting-started-with-writing-and-formatting-on-github/basic-writing-and-formatting-syntax).

