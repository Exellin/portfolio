source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?('/')
  "https://github.com/#{repo_name}.git"
end

ruby '3.0.1'

# Use Bootstrap as the HTML, CSS, and JS framework
gem 'bootstrap-sass'
# Use Devise as the authentication solution
gem 'devise', '~> 4.7.3'
# Use font-awesome as the icon library
gem 'font-awesome-rails'
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '6.1.3.1'
# Use Puma as the app server
gem 'puma', '~> 4.3'
# Use pygments as the syntax highlighter
gem 'pygments.rb'
# Use Redcarpet as the markdown processor
gem 'redcarpet'
# Use SCSS for stylesheets
gem 'sassc-rails'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# See https://github.com/rails/execjs#readme for more supported runtimes
gem 'therubyracer', platforms: :ruby
# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
  # Use capybara for feature testing
  gem 'capybara'
  # Use faker to generate data for use in factories
  gem 'faker'
  # Use sqlite3 as the database for Active Record
  gem 'sqlite3'
  # Use factory_girl as the fixtures replacement for testing
  gem 'factory_bot_rails'
  # Use rspec as the testing framework
  gem 'rspec-rails'
end

group :development do
  # Use Capistrano for deployment with passenger
  gem 'capistrano-bundler'
  gem 'capistrano-passenger'
  gem 'capistrano-rails'
  gem 'capistrano-rvm'
  # Use rubocop for ruby file linting
  gem 'rubocop', require: false
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'listen'
  gem 'web-console', '~> 2.0'
end

group :production do
  gem 'pg'
  gem 'rails_12factor'
end
