source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.5.1'
# Use sqlite3 as the database for Active Record
gem 'sqlite3'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

gem 'active_model_serializers'

# Use ActiveModel has_secure_password
gem 'bcrypt', '~> 3.1.7'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger
  # console
  gem 'byebug'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in
  # the background. Read more: https://github.com/rails/spring
  gem 'spring'
end

gem 'autoprefixer-rails'
gem 'escape_utils'

group :doc do
  gem 'yard', require: false
  gem 'yard-tomdoc', require: false
end

group :development do
  gem 'bullet'
  gem 'lol_dba'
  gem 'brakeman', require: false
  gem 'rubocop', require: false
  gem 'meta_request'
  gem 'quiet_assets'
  gem 'annotate'
end

group :development, :test do
  gem 'fabrication'
  gem 'ffaker'
  gem 'pry-byebug'
  gem 'pry-rails'
end

group :test do
  gem 'minitest-rails'
  gem 'minitest-reporters', require: false
  gem 'minitest-extra-matchers', require: false
  gem 'simplecov', require: false
  gem 'database_cleaner'
end