SimpleCov.maximum_coverage_drop 3

SimpleCov.start do
  command_name 'minitest specs'
  add_filter "/spec/"
  add_filter "/config/"
end
