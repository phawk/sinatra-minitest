source 'https://rubygems.org'

ruby '2.2.0'

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
end

group :test do
  gem 'minitest', '~> 5.4.1'
  gem 'minitest-rg'
  gem 'rack-test', '~> 0.6.2'
  gem 'mocha', '~> 1.1.0', require: false
end
