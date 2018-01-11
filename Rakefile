require 'rake/testtask'

Rake::TestTask.new(:test) do |test|
  test.libs << 'lib' << 'test'
  test.pattern = 'test/Test_*.rb'
  test.verbose = true
  test.warning = true
end

task :default => :test
