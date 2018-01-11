require 'rake/testtask'

Rake::TestTask.new(:test) do |test|
  test.libs << 'lib' << 'test'
  test.pattern = 'test/BasicStuff.rb'
  test.verbose = true
end

task :default => :test