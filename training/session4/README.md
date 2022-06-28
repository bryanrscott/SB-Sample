# Solomon Islands Training

## Session 4
Samples and examples for an introduction to development training.  
This session is on using Docker to provide MSSQL Server

## Admin
- hopefully everyone has done a 
  - docker pull mcr.microsoft.com/mssql/server:2022-latest
- Need to ask is anyone is running sql server as a service on their laptop?
- We might run into some problems, particularly the first time as I am not sure what firewall software you use on your local machine.

#### Docker
Docker is a commercial product, but I am using as a synoynm for "Development Virtual Machines".   Technically docker is a virtual containers on possibly a virtual machine.  But we are discussing development not infrastructure so will not be so specific.

Important differences
- Normally not a machine, but a function or service. (web server + database server)
- generally treated as disposable
- generally NO backups

So why use docker in the development cycle
- No 1 - It makes it easy to get someone else started
- Generally only defined at the start and minor updates during project.
- removes the individual computer settings from the process
- documents system requirements and can be included in git repository
- provides a way to manage settings

Docker runs on your computer and provides the hosting of the various services.   Some support features include "Docker Dashboard".  

Now you can do a lot with the docker command itself, but we are going to focus on using docker-compose because it is focused on using configuration files for setting rather than command line options.  This makes it perfect for the work we will do.

Generally because a docker compose setup is pretty static it is not often you need to create from scratch.   This means the most important thing to learn today 
- docker-compose up
- environment settings

##### Scenario
For todays scenario we will assume our development project only has a single Microsoft SQL Server.  Our next session will build on this to add more elements that we will use in the "SOLLIC Anywhere" project.  But for now just one service.


##### Projects
Here are the projects for this session
- [Project 1](./project1/README.md)
- [Project 2](./project2/README.md)

##### Next Week
Lets setup the docker environment for "SOLLIC Anywhere"


