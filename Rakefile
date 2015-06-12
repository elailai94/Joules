#==============================================================================
# Joules
#
# @description: Module for providing rakefile
# @author: Elisha Lai
# @version: 0.4.3 13/06/2015
#==============================================================================

# Rakefile module (Rakefile)

require 'rake/testtask'

Rake::TestTask.new do |t|
  t.libs << 'test'
end

desc "Run tests"
task :default => :test
