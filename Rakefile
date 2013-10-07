Dir['./lib/tasks/**/*.rake'].each { |f| load f }
task :default => :test

desc "Opens a console session [Development]"
task(:irb) {
  irb = ENV['IRB_PATH'] || 'irb'
  system "#{irb} -r./init.rb"
}
