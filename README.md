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

## User Story #2 - As a User, I want to see what 30 minute timeslots are available to schedule with a particular coach.
* Create new timeslots database model and migration
* Modify seed script to break up current seed data and create new data table that will house all time slots in 30 minute increments
* Modify GET request or create new one that will get all available time slots

## User Story # 3 - As a User, I want to book an appointment with a coach at one of their available times.
* Test out PUT requests on timeslots to change "available" field to false

## System Requirements - what platform/service am I deployed to
I have decided to deploy to Heroku. I suggest Heroku for this deployment.

### Build/Run Instructions
* Ensure that you have deployed an API Key on your google account so that you are able to access the Google Sheet. Once you have that API Key, make sure that it is set as an environmental variable in Heroku (more on that down the page). You can find a good set of instructions on how to leverage the newest version of google sheets API at this link: https://support.google.com/docs/thread/121088347/retrieving-data-from-sheets-results-in-404-error-50-of-the-time?hl=en


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
