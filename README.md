# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version: 2.6.3

* System dependencies: Ruby


## Running locally

* Clone the repo
* `bundle install`
* If you are using `direnv`, create a `.envrc` file with the following credentials:

  - TWILIO_ACCOUNT_SID: You can get this from Twilio
  - TWILIO_AUTH_TOKEN: You can get this from Twilio
  - TWILIO_NUMBER: Twilio will provide one for you
  - DEV_NUMBER: Your number
  - DATABASE_URL: Your db URL - you can get this from your provider (Heroku etc.)

* If not using `direnv` set the above variables in your environment.
    * Once yu've added your creds, simply run:
    * `rake db:setup`
    * `rake db:seed` - for seed data

* Run the app! `rails s`
