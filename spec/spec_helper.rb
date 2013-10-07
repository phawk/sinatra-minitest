# TEST ENV VARS
ENV["RACK_ENV"] = "test"

require 'bundler'
Bundler.require :default, :test

require 'minitest/autorun'
require 'minitest/reporters'
require 'minitest/spec'
require 'rack/test'
require 'mocha/setup'

# Load the sinatra application
require_relative '../app'

# Use minitest reporters
MiniTest::Reporters.use!

# Load the unit helpers
require_relative "support/unit_helpers.rb"

class UnitTest < MiniTest::Spec
  include UnitHelpers

  register_spec_type(/(Unit|Spec|Model)$/, self)

  register_spec_type(self) do |desc|
    true if desc.is_a?(Class)
  end

  def app
    Api::Base
  end
end
