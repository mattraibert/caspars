require 'rake'
require 'rake/testtask'
Rake::TestTask.new(:test) do |test|
  test.libs << '.' << 'test'
  test.pattern = '**/*_test.rb'
  test.verbose = true
end

Rake::TestTask.new(:answers) do |test|
  test.libs << '.' << 'test'
  test.pattern = ([*(1..18)] + [25]).map {|i| "#{i}.rb" }
  test.verbose = true
end

task :default => :test
