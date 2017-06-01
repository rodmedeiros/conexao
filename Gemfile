source 'https://rubygems.org'

ruby '2.4.1'

gem 'iduff-sso', '0.0.6', source: 'https://XXXXXXXX:XXXXXXXX@sistemas.uff.br/sti/gemserver/'

gem 'rails', '5.1.1'
gem 'puma', '2.15.3'
gem 'secure_headers', '2.4.4'
gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder'
gem 'sass-rails'
gem 'coffee-rails'
gem 'uglifier'
gem 'normalize-rails'

# Chose which database you wish to use
# gem 'sqlite3'
gem 'mysql2'

gem 'jquery-turbolinks'
gem 'exception_notification'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

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
end

group :test do
  gem 'shoulda-matchers', '3.0.1', require: false
  gem 'simplecov', '0.11.1', require: false
  # Para testes de email
  gem 'email_spec', '1.6.0'
  gem 'capybara', '2.5.0'
  # Para testes js
  # gem 'poltergeist',          '1.8.0'
  gem 'vcr', '3.0.0'
  gem 'webmock', '1.22.3'
  gem 'database_cleaner', '1.5.1'
end

group :development, :test do
  gem 'rspec-rails'
  gem 'factory_girl_rails'
  gem 'pry-rails'
  gem 'dotenv-rails'
  gem 'awesome_print', '1.6.1'
  gem 'spring-commands-rspec', '1.0.4'
  gem 'byebug', '8.2.1'
  gem 'web-console'
  gem 'spring', '1.5.0'
end
