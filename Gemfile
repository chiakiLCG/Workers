# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.3'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '5.2.6'
# Use mysql as the database for Active Record
gem 'mysql2', '>= 0.4.4', '< 0.6.0'
# Use Puma as the app server
gem 'puma', '~> 3.11'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use ActiveModel has_secure_password
gem 'bcrypt', '~> 3.1.7'
# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.1.0', require: false
# Japanese localization of error messages
gem 'rails-i18n'
# Decorator
gem 'active_decorator'
# Rails form builder that makes it super easy to create beautiful-looking forms using Bootstrap
gem 'bootstrap_form'
# A Scope & Engine based, clean, powerful, customizable and sophisticated paginator for modern web app frameworks
gem 'kaminari'
# acts_as_paranoid for Rails 3, 4 and 5
gem 'paranoia'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'rspec-rails'
  # Code coverage for Ruby
  gem 'simplecov'
  # Step-by-step debugging and stack navigation in Pry
  gem 'pry-byebug'
  # Help to kill N+1 queries and unused eager loading
  gem 'bullet'
  # Shim to load environment variables from .env into ENV in development.
  gem 'dotenv-rails'
  # Factory Bot Rails
  gem 'factory_bot_rails'
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'web-console', '>= 3.3.0'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  # A Ruby static code analyzer and formatter, based on the community Ruby style guide. https://docs.rubocop.org
  gem 'rubocop', require: false
  gem 'rubocop-performance'
  gem 'rubocop-rails'
  gem 'rubocop-rspec'
  # Remote multi-server automation tool http://www.capistranorb.com
  gem 'capistrano', '~> 3.14', require: false
  gem 'capistrano-bundler', require: false
  gem 'capistrano-rails', '~> 1.4', require: false
  gem 'capistrano-rbenv', '~> 2.0', require: false
  gem 'capistrano-systemd-multiservice', '~> 0.1.0.beta9', require: false
  gem 'capistrano-yarn', require: false
  # Suport ED25519 ssh keys in capistrano
  gem 'bcrypt_pbkdf', '< 2.0'
  gem 'ed25519', '< 2.0'
  gem 'i18n_generators'
    # 'pry' is a runtime developer console and IRB alternative with powerful introspection capabilities.
  gem 'pry-rails'
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  # Easy installation and use of chromedriver to run system tests with Chrome
  gem 'chromedriver-helper'
end
