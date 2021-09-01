# README

This README would normally document whatever steps are necessary to get the
application up and running.

* Ruby version - 3.0.1


## User Story #1 - As a User, I want to see which coaches I can schedule with.

### Basic Project Outline
* Initialize Rails project
* Create Database model and migrate
* Import coach seed data into database
* Initialize GET route that can access all db entries


### System Requirements - what platform/service am I deployed to

### Build/Run Instructions
* Ensure that you have deployed an API Key on your google account so that you are able to access the Google Sheet. Once you have that API Key, make sure that it is set as an environmental variable in Heroku (more on that down the page).

#### LOCAL DEV ENVIRONMENT

* Make sure that you have yarn installed on your computer (found at https://yarnpkg.com/en/docs/install) and subsequently webpacker by running the command below in the scheduler folder. This is required in order to run a development server to test your changes.
```
rails webpacker:install
```

* Make sure you run the command below in order to install all the dependencies for your development server.
```
bundle
```

* If you plan on running the application on your development server, test server, or production server with the original seed data, be sure to run the command below to get the data reset and seeded. Note that this will delete everything in there to be replaced with the original source data.
```
rails db:seed
```

#### DEPLOYED DEV/TEST ENVIRONMENT
* I chose to deploy to Heroku
* Ensure to save your Google API Key for your Google Sheet to your Environmental Variable.
* After build has completed, make sure to click on the "More" button in Heroku, and "Run Console". You will type in the following commands in order to ready the database:
```
rake db:schema:load
rake db:seed
```

### Challenges/Issues encountered
* I encountered some problems with database migrations and schema, but ultimately ended up deleteing all my migrations and starting from scratch which worked great.
* Upon deployment, I found out that Heroku doesn't accept sqlite3 as a database, so I had to pivot to postgreSQL, which was a little tricky but ultimately I made the correct configurations in the config/database.yml file.
