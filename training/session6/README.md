# Solomon Islands Training

## Session 6
Samples and examples for an introduction to development training.  
This session is existing the base application "SOLLIC Anywhere" to have a CRUD table

#### Admin
- Create, Read, Update, Delete == CRUD

#### Laravel Base Project
Lets get the first app running....
```
composer install
npm install
npm run prod
php artisan migrate:refresh --seed
```

There are lots of ways to do this.   This might not be the best...  We are going to start with
a plain HTML file.

Now we could just put an HTML file in public and be done with it. If we wanted to end with an
HTML page that actually would be fine. We want our application to serve data from the database 
into html files for the browser.   So we can have our application serve the plain page.

To do that we will need to create a few things.

1. ROUTE : Tells the system what url and request type to respond to.  GET,POST,PATCH,PUT,DELETE
2. CONTROLLER : tells the system what to respond with, calls the view
3. VIEW : The HTML


Demo creating route 'static/profiles/bryan.scott'
- view to extend frontend/layouts/app
- Very simple.   '\<h1>{{ Your Name }}\</h1>'


OK everyone create your profile.

### Demo route parameter
  '/static/profile2/{name}'

### Model
   Lets create a model for 
### View Page.

### CRUD Pages
OK if we take 