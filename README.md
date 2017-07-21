# _Park Lookup API_

#### _This is an API Application built using Ruby on Rails.  July 21, 2017_

#### By _**Grady Shelton**_

## Description

This is an API that includes data for State and National Parks. It features Pagination to limit the amount of results returned. This API also includes multiple scopes listed below.

Users can access:
- GET requests for parks

Authenticated users can access:
- POST, PATCH, PUT, DELETE requests for parks

Scopes:
- Filters parks by name
- Filters parks by state
- Filters parks by acres
- Filters parks by ownership

## Database Seeding

The application is seeded using `faker`.  It seeds 40 parks, half are state and half are national.

## Prerequisites

You will need the following things properly installed on your computer.

* [Git](https://git-scm.com/)
* [Postgres](https://www.postgresql.org/)
* [Ruby](https://www.ruby-lang.org/en/downloads/)
* [Rails](http://rubyonrails.org/)

## Installation

In your terminal:
* `git clone https://github.com/gravytates/parks_api.git`
* `cd parks_api`
* `bundle install`
* Open another terminal window and type `postgres`.  Leave this window open.
* In your first terminal window type:
* `bundle exec rake db:setup`
* `bundle exec rake db:test:prepare`

You can test the API in Postman.

## Development server

Run `bundle exec rails s` for a dev server. Navigate to `http://localhost:3000/`. The app will automatically reload if you change any of the source files.

* If you would like to make changes to this project, do so in a text editor.
* Make frequent commits with detailed comments.
* Submit changes as pull request to Asia at akane0915 on Github.
* URL: localhost:3000/

## Calling API from another application
You can test API calls from your own application via the Rails Console.  See sample commands below for GET, PATCH, POST, and DELETE.

### University Calls

```
JSON.parse(RestClient.get 'http://localhost:3000/parks')
```

```
JSON.parse(RestClient.patch 'http://localhost:3000/parks/1', {name: 'updated', state: 'desc', acres: 2000, ownership: 'State'})
```

```
JSON.parse(RestClient.post 'http://localhost:3000/parks', {name: 'uni', state: 'desc', acres: 2000, ownership: 'State'})
```

```
JSON.parse(RestClient.delete 'http://localhost:3000/parks/1')
```


## Running tests

This app uses RSpec and Shouldamatchers for testing.
Run `bundle exec rspec` in terminal to test.

## Technologies Used

* Ruby
* Rails
* JWT Gem
* Devise
* ActiveRecord
* Postgres
* Bundler
* Rake Gem
* HTML
* CSS
* Bootstrap
* ES6

## Known Bugs
_N/A_

## Support and contact details
_I encourage you to update/make suggestions/refactor this code as you see fit. I am always open to improvement! Please contact Grady Shelton at gradyish@gmail.com with questions._

### License
*This software is licensed under the MIT license*
Copyright © 2017 **Grady Shelton**
