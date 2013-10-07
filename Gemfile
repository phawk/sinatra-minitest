source 'http://rubygems.org'

ruby '2.0.0'

# Sinatra microframework
gem 'rack'
gem 'rake'
gem 'sinatra', require: "sinatra/base"
gem 'sinatra-contrib'
gem 'multi_json'

# Serve with unicorn
gem 'unicorn'

group :test do
  # minitest
  gem 'minitest'
  gem "rack-test", "~> 0.6.1"

  # Nicer formating of minitest
  gem 'minitest-reporters', require: false

  # Mocking and stubbing
  gem 'mocha', '~> 0.14.0', require: false

  # Acceptance tests via browser simulation
  gem 'capybara', '~> 1.1'
  gem "capybara_minitest_spec", "~> 0.2"

  # More Capybara drivers
  # gem 'capybara-envjs', require: "capybara/envjs"
  # gem 'capybara-webkit'
end
