require 'rake/testtask'

Rake::TestTask.new do |test|
  test.libs = ["lib"]
  test.warning = true
  test.verbose = true
  test.test_files = FileList['test/Test_*.rb']
end

task :default => :test
