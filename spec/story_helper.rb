require_relative "spec_helper"

require 'capybara'
require 'capybara/dsl'
require 'capybara_minitest_spec'

Capybara.app = Api::Base

# Load the story helpers
require_relative "support/story_helpers.rb"

class StoryTest < UnitTest
  include Rack::Test::Methods
  include Capybara::DSL
  include StoryHelpers

  register_spec_type(/Story$/, self)
end

class Capybara::Session
  def params
    Hash[*URI.parse(current_url).query.split(/\?|=|&/)]
  end
end
