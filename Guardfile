# A sample Guardfile
# More info at https://github.com/guard/guard#readme

guard :minitest do
  # with Minitest::Spec
  watch(%r{^spec/(.*)_spec\.rb})
  watch(%r{^lib/(.+)\.rb})         { |m| "spec/#{m[1]}_spec.rb" }
  watch(%r{^spec/spec_helper\.rb}) { 'spec' }

  # Sinatra
  watch(%r{^app\.rb}) { 'spec' }
end

guard :rubocop do
  watch(%r{.+\.rb$})
  watch(%r{(?:.+/)?\.rubocop\.yml$}) { |m| File.dirname(m[0]) }
end
