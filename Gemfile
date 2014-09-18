source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.1.1'
gem 'will_paginate', '~> 3.0'
# Use postgresql as the database for Active Record
gem 'pg'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.3'
# Bootstrap
gem 'bootstrap-sass'
# Automatically adds vendor prefixes
# for a demo visit http://jsfiddle.net/simevidas/udyTs/show/light
gem 'autoprefixer-rails', '~> 3.0.1.20140826'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'
# Use jquery as the JavaScript library
gem 'jquery-rails'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0',          group: :doc
# Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
gem 'spring',        group: :development
# Use ActiveModel has_secure_password
gem 'bcrypt', '~> 3.1.7'
#Paperclip manages user upload of profile photos
gem "paperclip", "~> 4.2"

#for AWS storage of user photos
gem "aws-sdk"

gem "unicorn"

gem 'rails_12factor', group: :production

#for angularjs to work nicely on rails
gem 'angularjs-rails'
gem 'active_model_serializers'
gem 'angular-rails-templates'

# debugging tools
group :development do
  gem 'meta_request'
  gem "better_errors"
  gem "binding_of_caller"
end

# testing
group :development, :test do
  gem 'rspec-rails', '~> 3.0.0'
  gem 'guard-rspec', require: false
  gem 'shoulda-matchers'
  gem 'capybara'
  gem "jasmine", github: "pivotal/jasmine-gem" #js testing
end


ruby "2.1.2"
