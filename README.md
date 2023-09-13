## Introduction

This API provides CRUD operations for managing people's information. It allows you to create, read, update, and delete person records.

![Alt Text](images/chatuml-diagram.svg)


## Getting Started

1. Clone the repository:
git clone git@github.com:Gmanlove/rest-api.git

2. cd rest-api

3. run code . to open it on Vscode editor

## Install dependencies:
run bundle install
## Database Setup
Create the database and run migrations:
rails db:create
rails db:migrate
Seed the database with sample data (optional):
rails db:seed

## Dependencies
Ruby 3.0.0
Rails 7.0.8
PostgreSQL
## Configuration
The API uses environment variables for configuration. Create a .env file in the project root and add the following:

DATABASE_URL=postgresql://username:password@localhost:5432/sample_api_development

## Testing

 Set Up RSpec
Open your Gemfile and add the rspec-rails gem:

group :development, :test do
  gem 'rspec-rails', '~> 5.0.0'
end
Install the gem by running: bundle install

Set up RSpec in  Rails application:
rails generate rspec:install
This will create the necessary configuration files for RSpec.

## Running the test 
Type "Rspec spec" in the terminal to excute the test