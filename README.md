# README
Pet-Shop Setup

* Ruby version
ruby 2.4.1p111 (2017-03-22 revision 58053) [x86_64-darwin18]

* System dependencies
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'launchy'
  gem 'shoulda-matchers'
  gem 'capybara'
  gem 'pry'
  gem 'rspec-rails'
* Configuration
rails new Pet-Shop -T (skip minitest and use RSpec)
                   -d="postgresql"
                   --skip-spring
                   --skip-turbolinks
rails g rspec:install

* Database creation
rake db:create

* Database initialization
rake db:{drop,create,migrate}

* How to run the test suite
rspec

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
