source 'https://rubygems.org'
ruby "2.1.2"

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.2'

# Postgres for Production
group :production do
  gem 'pg'
  gem 'rails_12factor'
end

# SQLite for dev
group :development do
  gem 'sqlite3'
end

# Use SCSS for stylesheets
# gem 'sass-rails', '~> 4.0.0'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.2'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

# Authentication
gem 'devise'

# Management
gem 'activeadmin', github: 'gregbell/active_admin'

# Bootstrap
gem 'sass-rails', '>= 3.2' # sass-rails needs to be higher than 3.2
gem 'bootstrap-sass', '~> 3.1.1'

group :development, :test do
  gem 'rspec-rails', '~> 3.0.0'
end