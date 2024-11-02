require 'rake'
require 'rake/testtask'
Rake::TestTask.new(:test) do |test|
  test.libs << '.' << 'test'
  test.pattern = 'test/**/*_test.rb'
  test.verbose = true
end

Rake::TestTask.new(:answers) do |test|
  test.libs << '.' << 'test'
  test.pattern = 'test/answers.rb'
  test.verbose = true
end

task :default => :test
