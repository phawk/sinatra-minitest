require 'simplecov'
require 'coveralls'

SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter[
  SimpleCov::Formatter::HTMLFormatter,
  Coveralls::SimpleCov::Formatter
]

SimpleCov.maximum_coverage_drop 3

SimpleCov.start do
  command_name 'minitest specs'
  add_filter "/spec/"
  add_filter "/config/"
end
