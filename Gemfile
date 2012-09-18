source 'http://rubygems.org'

gem 'rails', '3.1.0'

# Bundle edge Rails instead:
# gem 'rails',     :git => 'git://github.com/rails/rails.git'

gem 'thin'
gem 'gravtastic'
gem 'jquery-rails'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sqlite3'
  gem 'sass-rails', "  ~> 3.1.0"
  gem 'coffee-rails', "~> 3.1.0"
  gem 'uglifier'
  gem 'nifty-generators'
  gem 'haml'
  gem 'faker'
  gem 'populator'
end

group :production do
  gem 'pg'
end

# Use unicorn as the web server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'ruby-debug19', :require => 'ruby-debug'

group :test do
  # Pretty printed test output
  gem 'turn', :require => false
end
gem "bcrypt-ruby", :require => "bcrypt"
gem "mocha", :group => :test
