source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.6'
gem 'puma'
# Add BCrypt for Password Hashing
gem 'bcrypt', '3.1.11'
# Use postgresql as the database for Active Record
gem 'pg', '~> 0.15'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby
# Use Whenever for Ruby Cron Jobs
gem 'whenever', '~> 0.9', require: false
# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
gem 'figaro'

group :development, :test do
  # Pry for both debug and console
  gem 'pry-rails'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'

  gem 'capistrano',         require: false
  gem 'capistrano-rvm',     require: false
  gem 'capistrano-rails',   require: false
  gem 'capistrano-bundler', require: false
  gem 'capistrano3-puma',   require: false
  gem 'capistrano-rails-console', require: false
end

group :assets do
  gem 'therubyracer'
  gem 'sass-rails', '~> 5.0'
  gem 'coffee-rails'
end
