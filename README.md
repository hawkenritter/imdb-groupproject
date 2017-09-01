# README

##  Welcome to IMDbc

Our IMDbc project is a Internet Movie Database (IMDb) clone. It's an online database of information related to films, including cast, directors, film abstract, official poster and comments or movie reviews.

The site enables registered users to submit comments / reviews, add movies to their personal watchlist, favorite movies and track all of their site activity.

## Core Goals:

1. Has user authentication with password stored securely
2. Provides ability to search for movies
3. Movies could be added to a watch list
4. Movies could be favorited
5. Movies could have conversations
6. There should be an activity feed
7. This information should all be viewable on a user’s profile

## Project Management Tool

[Trello Link](https://trello.com/b/6NYuaLxb/imdb-clone)

## Ruby version

* Built using Ruby 2.4.1 and Rails 5.1.3

## System dependencies

* macOS version (~> 10.1)

* bundler

* Ruby 2.4.1

* Rails 5.1.3

* PostgreSQL 9.6.3

## Configuration

    $ git clone https://github.com/hawkenritter/imdb-groupproject.git

    $ cd imdb-groupproject

    $ bundle install

    $ rails db:setup

    $ rails server

## Database

The website uses a Postgres database

* postgres (PostgreSQL) 9.6.3

### Database creation

    $ rails db:create

### Database initialization

    $ rails db:migrate

    $ rails db:seed

## Testing

### How to run the test suite

    $ rspec

### Continuous Integration

* [Travis CI](https://travis-ci.org/hawkenritter/imdb-groupproject)

>https://travis-ci.org/hawkenritter/imdb-groupproject

### Other gems / libraries used when testing

* [Capybara](https://github.com/teamcapybara/capybara)

* [FactoryGirl](https://github.com/thoughtbot/factory_girl)

* [Faker](https://github.com/stympy/faker)

* [Warden](https://github.com/hassox/warden/wiki)

## Deployment

* [Heroku](https://pure-thicket-51811.herokuapp.com/)

>https://pure-thicket-51811.herokuapp.com/

## Contributing

We encourage you to contribute to IMDbc! Please email [dev@imdbc.com](mailto:dev@imdbc.com) to get a copy of our 'Contributing to IMDbc Guide' and 'Code of Conduct'.

Trying to report a possible security vulnerability or bug? Please email [bugs@imdbc.com](mailto:bugs@imdbc.com)

## License

IMDbc is released under the [MIT License](https://opensource.org/licenses/MIT).