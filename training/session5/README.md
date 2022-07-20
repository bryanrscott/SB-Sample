# Solomon Islands Training

## Session 5
Samples and examples for an introduction to development training.  
This session is on the base application for "SOLLIC Anywhere"

#### Admin
- In person training - all day
  - PPE, Toilets, Lunch
- Today will be informal, working through session 4 (Docker intro) and this session.
- Also have a session with feral, just project general info from FFA side

#### Starting Up
- we will actually start with revision / completion of session 4
- Then in this session we will start to utilise a base project and actually start looking 
at "SOLLIC Anywhere" by getting the data ready
- Then if time permits, because we are not sure we will move into session 6.  In this session
we will look at creating a web page on the server, and then introduce the basic elements for 
a CRUD system for a table
- As everyone will be progressing differently that is fine.   But if you are ahead you have a couple
of options
  - Work with someone who has not yet finished,  practise is a good thing 
  - Connect the TUFLIC access frontend, to the Docker database
  - Explore the existing TUFLIC access frontend end, and map the navigation paths to different parts of the application
  - 

#### Laravel Base Project
Lets get the first app running....
```
composer install
npm install
npm run prod
php artisan migrate:refresh --seed
```
Now there is lots in this to go over what we are doing is getting the framework running, then 
we are going to come back and explain each section.

First lets look at the services that are running in docker.    You should see 
3 containers, 3 images and 1 volume.

OK.  Lets confirm our server is up.  try in your browser to browse to http://localhost

OK.   Lets connect to our database using MSSQL Management Studio or Azure Data Studio.  You will not 
that two schema's have been created (ref and sollic).  For now just note that they exist. 

Next lets import again the SOLLIC data so we have on hand in this project.

There are lots of boring parts when working on existing code, but those boring parts are fundamental 
to the project.  An essential part of any project is the database structure and documenting it.
Different development code will all have different ways of doing, what is important is that is 
documented within the code and used by the code to ensure that it remains current. 
Lets have a look at project2a/database/migrations.  

Here you can see a file for each database object.  The filename is made up of a sequence number, 
action (create, update, rename, etc), the object name and finally the object type.  This is by 
convention only, but it really helps if you follow the convention.

Walk through sollic_vessel_types migration.  Noting
- todo comments ie // todo
- Multiple iterations does not need to perfect, needs to work though
- column comments
- nullable option
- the data types
- column names are all lower case
- column names are expanded where possible.
- primary key is just id
- foreign keys are preferred to be tablename_id

Walk through sollic_vessels migration

Demo conversion.  Copy existing migration, rename file, rename class, minimise table, adjust tablename
 and then add in the columns.   An easy way to get all the column names and types is to use the script

php artisan migrate:refresh --seed

Now lets do them.  Everyone take a table and commit migration until all complete.  We are expecting 
a few problems
- someone commits breaking code.
- git sync issues.


OK now that we have the tables......   Let discuss data.  Lets says there are two types of data 
in an application
- reference data (not often edited/entered by the user, mainly used as lookups)
- user data (everthing else)

Lets deal with reference data.  Lets start with the islands tables. 
- get a json export of the data
- create a seeder file, with no actions
- confirm you can run the seeder using php artisan db:seed --class=IslandSeeder
- build the seeder to read from the json file.
- Do inserts
- Note we might come back later and revise once we have learned some more components.

##### Projects
Here are the projects for this session
- [Project 2a](https://github.com/ffagithub/sb-ictsu/blob/development/project2a/README.md)

##### Next Week
Models and CRUD for "SOLIC Anywhere"...


