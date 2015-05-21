#==============================================================================
# Joules
#
# @description: Module for providing energy, work, and power equations
# @author: Elisha Lai
# @version: 0.0.1 16/05/2015
#==============================================================================

# Energy, work, and power module (energy_work_power.rb)

require 'constants'

# gravitational_potential_energy: (union Int Float) (union Int Float)
# -> Float
# Conditions:
#     PRE: mass >= 0
#          mass is in kilograms.
#          height >= 0
#          height is in meters.
#     POST: Returns a Float.
#           returned value >= 0
#           returned value is in joules.
# Purpose: Consumes two numbers, mass and height. Returns the calculated
# gravitational potential energy.
def gravitational_potential_energy(mass, height)
  return mass * FREE_FALL_ACCELERATION * height
end

# elastic_potential_energy: (union Int Float) (union Int Float) -> Float
# Conditions:
#     PRE: spring_constant >= 0
#          spring constant is in newtons per meter.
#          extension >= 0
#          extension is in meters.
#     POST: Returns a Float.
#           returned value >= 0
#           returned value is in joules.
# Purpose: Consumes two numbers, spring_constant and extension. Returns
# the calculated elastic potential energy.
def elastic_potential_energy(spring_constant, extension)
  return 0.5 * spring_constant * (extension ** 2)
end

# kinetic_energy: (union Int Float) (union Int Float) -> Float
# Conditions:
#     PRE: mass >= 0
#          mass is in kilograms.
#          velocity is in meters per second.
#     POST: Returns a Float.
#           returned value >= 0
#           returned value is in joules.
# Purpose: Consumes two numbers, mass and velocity. Returns the calculated
# kinetic energy.
def kinetic_energy(mass, velocity)
  return 0.5 * mass * (velocity ** 2)
end

# work_done: (union Int Float) (union Int Float) -> Float
# Conditions:
#     PRE: force is in newtons.
#          distance is in meters.
#     POST: Returns a Float.
#           returned value is in joules.
# Purpose: Consumes two numbers, force and distance. Returns the
# calculated work done.
def work_done(force, distance)
  return force * distance.to_f
end
