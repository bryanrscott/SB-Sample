# Solomon Islands Training

## Session 4
Samples and examples for an introduction to development training.  
This session is on using Docker to provide MSSQL Server

## Admin
- Info catchup with Edmond.
- Hopefully everyone has done a 
  - docker pull mcr.microsoft.com/mssql/server:2022-latest
- Need to ask if anyone is running SQL Server as a service on their laptop?
- We might run into some problems initially as I'm not sure what firewall software is on your local machine.

#### Docker
Docker is a commercial product, but I'm using it simply as a synonym for "Development Virtual Machines". Technically, Docker is a virtual containers on possibly a virtual machine. But we are discussing development not infrastructure so will not be so specific.

Why does ICTSU run so many VMs?  

Important differences 
- Normally not a machine, but a function or service. (web server + database server)
- Generally treated as disposable
- Generally NO backups

So why use Docker in the development cycle
- No 1 - It makes it easy to get someone else started
- Generally only defined at the start and minor updates during project.
- Removes the individual computer settings from the development process
- Documents system requirements and can be included in git repository
- Provides a way to specify and manage development settings or environment

Downsides 
- Getting started with Docker can take longer initially

Some Other Facts
- Docker runs containers (Virtual Machines) in two command forms
  - The command docker and is for instantaneous commands
  - The command docker-compose which uses a configuration file
- Docker runs on your computer and provides the hosting of the various services. Some support features include "Docker Dashboard".  

Now you can do a lot with the Docker command itself, but we are going to focus on using docker-compose because it is focused on using configuration files for setting rather than command line options. The configuration file is what documents a setup.

Generally because a docker compose setup is pretty static, it is not often that you will need to create it from scratch. This means the most important thing to learn today 
- docker-compose up : The command to start docker process for a project
- docker-compose.yml : The docker configuration file for a project
- .env : The environment settings for a project

##### Scenario
For today's scenario, we will assume our development project only has a single Microsoft SQL Server. Our next session will build on this to add more elements that we'll use in the "SOLIC Anywhere" project. But for now just a simple database service.


##### Projects
Here are the projects for this session
- [Project 1](./project1/README.md)
- [Project 2](./project2/README.md)

##### Next Week
Let's set up the docker environment for "SOLIC Anywhere"...


