source 'https://rubygems.org'

ruby '2.5.1'

gem 'iduff-sso', '0.1.0', source: 'https://XXXXXXXX:XXXXXXXX@sistemas.uff.br/sti/gemserver/'

gem 'rails', '5.2.0'
gem 'puma', '3.10.0'
gem 'secure_headers', '4.0.1'
gem 'turbolinks'
gem 'sass-rails'
gem 'uglifier'
gem 'normalize-rails'
gem 'bootstrap-sass', '3.3.7'

# Chose which database you wish to use
gem 'sqlite3', '~> 1.3', '>= 1.3.13'
#gem 'mysql2'

gem 'exception_notification'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

# Use ActiveModel has_secure_password
gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :production, :homologacao do
  gem 'rails_12factor', '0.0.3'
  gem 'rack-canonical-host', '0.2.2'
  gem 'librato-rails', '1.0.0'
  gem 'newrelic_rpm', '~> 3.12'
  gem 'SyslogLogger', '1.4.1'
end

group :development do
  gem 'better_errors'
  gem 'binding_of_caller'
  # Para envios de email (testes em dev)
  gem 'letter_opener'
  gem 'bullet'
  gem 'listen'
  gem 'web-console'
end

group :test do
  gem 'shoulda-matchers', '~> 3.1.2', require: false
  gem 'simplecov', '~> 0.15.1', require: false
  # Para testes de email
  gem 'email_spec', '~> 2.1.1'
  gem 'capybara', '~> 2.15.4'
  # Para testes js
  # gem 'poltergeist',          '1.8.0'
  gem 'vcr', '~> 3.0.3'
  gem 'webmock', '~> 3.1.0'
  gem 'database_cleaner', '~> 1.6.1'
  gem 'faker'
end

group :development, :test do
  gem 'rspec-rails'
  gem 'factory_girl_rails', '~> 4.4.1'
  gem 'pry-rails'
  gem 'dotenv-rails'
  gem 'awesome_print'
  gem 'spring-commands-rspec'
  gem 'byebug'
  gem 'spring'
  gem 'guard-rspec'
end
