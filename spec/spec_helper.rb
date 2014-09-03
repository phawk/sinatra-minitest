ENV['RACK_ENV'] = 'test'

require 'bundler'
Bundler.require :default, :test

require 'simplecov'
require 'coveralls'
require 'minitest/autorun'
require 'minitest/pride'
require 'minitest/spec'
require 'mocha/setup'

SimpleCov.start 'minitest-specs'
Coveralls.wear!('rails')

# Load the sinatra application
require_relative '../app'

# Load the unit helpers
require_relative 'support/unit_helpers.rb'

class UnitTest < MiniTest::Spec
  include UnitHelpers

  register_spec_type(self) do |desc, *addl|
    true if desc.is_a?(Class)
    addl.include? :unit
  end
end
