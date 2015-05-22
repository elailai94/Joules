Gem::Specification.new do |s|
  s.name        = 'Joules'
  s.version     = '0.0.1'
  s.date        = '2010-05-11'
  s.summary     = 'A library (gem) for providing Physics formulas'
  s.description = <<-EOF
    Joules is a library (gem) for providing simple Physics formulas
    in kinematics, forces, waves, electricity, and so much more. It
    is written entirely in Ruby.
  EOF
  s.authors     = ['Elisha Lai']
  s.email       = 'elisha.lai@outlook.com'
  s.files       = ['lib/joules.rb', 'lib/joules/constants.rb', 'lib/joules/kinematics.rb', \
    'lib/joules/mass_weight.rb', 'lib/joules/density.rb', 'lib/joules/forces.rb', \
    'lib/joules/momentum_impulse.rb', 'lib/joules/energy_work_power.rb', 'lib/joules/pressure.rb']
  s.homepage    = 'http://elailai94.github.io/Joules'
  s.license     = 'MIT'
end
