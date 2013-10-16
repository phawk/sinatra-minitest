require 'simplecov'
require 'coveralls'

SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter[
  SimpleCov::Formatter::HTMLFormatter,
  Coveralls::SimpleCov::Formatter
]

SimpleCov.maximum_coverage_drop 3

SimpleCov.adapters.define 'minitest-specs' do
  command_name 'minitest specs'
  add_group "Applications", "app"
  add_filter "spec"
  add_filter "config"
end
