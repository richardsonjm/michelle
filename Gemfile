source 'https://rubygems.org'

ruby '2.2.0'

gem 'rails', '4.2.1'

# Env variables (must be at top)
gem 'dotenv-rails', :groups => [:development, :test]

# Database
gem 'pg'

# Factories
gem 'factory_girl_rails'

# Models
gem 'attribute_normalizer'

# Assets
gem 'dragonfly', '~> 1.0.12'
gem 'dragonfly-s3_data_store'
gem 'foundation-rails'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.1.0'
gem 'jquery-rails'
gem 'turbolinks'
gem 'jquery-turbolinks', '~> 2.1.0'

# JSON APIs
gem 'jbuilder', '~> 2.0'

gem 'guard-rspec', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'thin'
  gem 'rspec-rails'
  gem 'pry-rails'
  gem 'better_errors'
  gem 'binding_of_caller'
end

group :test do
  gem 'shoulda-matchers', github: 'thoughtbot/shoulda-matchers', require: false
  gem 'database_cleaner'
end

group :production do
  # allows for heroku deployment
  gem 'rails_12factor'
  # allows for caching of dragonfly images
  gem 'rack-cache', :require => 'rack/cache'
  gem 'puma'
end

# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

# Gems to install outside the Gemfile
# foreman
