source 'https://rubygems.org'

ruby '2.1.2'

# Sinatra microframework
gem 'rack'
gem 'rake'
gem 'sinatra', require: "sinatra/base"
gem 'sinatra-contrib'
gem 'multi_json'

# Serve with unicorn
gem 'unicorn'

group :development, :test do
  gem 'guard-minitest'
  gem 'guard-rubocop'
end

group :test do
  gem 'rack-test', '~> 0.6.2'
  gem 'mocha', '~> 1.1.0', require: false
  gem 'simplecov', require: false
  gem 'coveralls', require: false
end
