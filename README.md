# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version - 3.0.1

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

## User Story #1 - As a User, I want to see which coaches I can schedule with.

### Basic Project Outline
* Initialize Rails project
* Create Database model and migrate
* Import coach seed data into database
* Initialize GET route that can access all db entries

* Initialize React App
* Write function to retrieve data from GET route
* Initialize a useEffect to retrieve coach data once
* Display all data
* Configure layout and design

### System Requirements - what platform/service am I deployed to

### Build/Run Instructions
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

### Challenges/Issues encountered
