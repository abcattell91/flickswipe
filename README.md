# Flickswipe

This is a mobile web app that allows you to swipe and match movies/tv shows together with your friends.
When you match a movie you both 'like' it will tell you where to watch it!

> Have a go! [_here_](https://www.flickswipe.org). <!-- If you have the project hosted somewhere, include the link here. -->
## Table of Contents

- [General Info](#general-information)
- [Technologies Used](#technologies-used)
- [Features](#features)
- [Setup](#setup)
- [Project Status](#project-status)
- [Room for Improvement](#room-for-improvement)
- [Acknowledgements](#acknowledgements)

<!-- * [License](#license) -->

## General Information

- This is a mobile web app, written in ruby on rails and hosted on Heroku.
- This app allows you to match on movies and tv shows to eliminate time wasted deciding on what to watch. Once you match it tells you where to watch.
- This project was completed as part of the Le Wagon fullstack developer bootcamp and served as an opportunity to develop my skills in:

* ruby on rails
* javascript
* scss
* javascript libraries
* git version control
* user authentication
* REST APIs
* production deployment
* implementation of image hosting services

## Technologies Used

- Rails 6.1.5.1 - Rails app generated with [lewagon/rails-templates](https://github.com/lewagon/rails-templates)
- Ruby 3.0.3
- yarn 1.22.17
- SCSS
- Cloudinary image hosting
- [_devise_](https://github.com/plataformatec/devise/)
- jQuery
- bootstrap 5
- font-awesome 6
- PostgreSQL 12

## Features

- Add friends
- Search for Friends
- Touch swiping with like and dislike/matching

## Setup

You will need Ruby 3.0.3 and Rails 6.1.5.1. Both can be installed via rbenv
You will also need a Cloudinary account (free is sufficient)
Download/Fork/Clone the repo and cd into the repo root directory in your terminal

To check that you have the correct ruby version run:
`ruby --version`

Run: `touch .env` followed by `echo '.env*' >> .gitignore` <br>
Add your cloudinary api to the .env file `CLOUDINARY_URL=cloudinary://2985**************:***********************`<br>
Add your TMDB api key to .env file `API_KEY=**********************`<br>
Add your RAPID_API key to the .env file `RAPID_API=************************************`<br>

You need to have an ultra subscription to https://rapidapi.com/movie-of-the-night-movie-of-the-night-default/api/streaming-availability/
for the seed to work correctly

Then run:
`bundle install`
to install the required gems

Run:
`yarn install`
to install the js packages

Run:
`rails db:create`
`rails db:migrate`
`rails db:seed`
to set up your database

Run:
`rails s`
to start a local rails server

## Project Status

Project is: _in progress_

## Room for Improvement

To do:

- Adding user dashboard
- Add more complex search for users
- Add user authentication
- Add more seeded streaming services
- Fix the limit on slides being shown

## Acknowledgements
Created by the [Le Wagon coding bootcamp](https://www.lewagon.com) team along with the help of Le Wagon Teaching Assistants.<br>
This product uses the TMDB API but is not endorsed or certified by TMDB.
