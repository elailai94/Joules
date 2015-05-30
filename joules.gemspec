#==============================================================================
# Joules
#
# @description: Module for providing library (gem) specifications
# @author: Elisha Lai
# @version: 0.3.0 29/05/2015
#==============================================================================

# Gemspec module (joules.gemspec)

Gem::Specification.new do |s|
  s.name        = 'joules'
  s.version     = '0.3.0'
  s.date        = '2015-05-29'
  s.summary     = 'A library (gem) for providing Physics formulas'
  s.description = <<-EOF
    Joules is a library (gem) for providing simple Physics formulas
    in kinematics, forces, waves, electricity, and so much more. A
    selection of fundamental constants are also provided. It is 
    written entirely in Ruby.
  EOF
  s.authors     = ['Elisha Lai']
  s.email       = 'elisha.lai@outlook.com'
  s.files       = Dir['lib/**/*.rb'] + ['README.md']
  s.homepage    = 'http://elailai94.github.io/Joules'
  s.license     = 'MIT'
end
