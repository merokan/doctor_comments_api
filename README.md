# README for Doctor Comments API Project

* Ruby version - 2.3.3
* Rails version - 5.2.0

Building out a "Comment on your Doctor" functionality including comments and a 1-5 rating. API has ability to create, read, update, delete, and deactivate comments. Once a comment is created, a list of 5 recommended doctors in the same area with the same speciality are displayed to the user.

I created models based off the schema provided, and added a Comment model, with a 1:M relationship to the author and doctor. I also added "city" and "state" columns to the Doctor table for the recommended doctors function.

* Seed

There is dummy data in the seed - to import, run rails db:seed

* How to run the test suite

Project tested using RSpec and Factory Girl - to test, run rspec spec/

