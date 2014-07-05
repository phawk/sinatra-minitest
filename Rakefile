task :default => :test

desc 'Run all tests [Testing]'
task(:test) do
  Dir['./spec/**/*_spec.rb'].each { |f| load f }
end
