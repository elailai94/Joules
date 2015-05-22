#==============================================================================
# Joules
#
# @description: Module for providing energy, work, and power formulas
# @author: Elisha Lai
# @version: 0.0.1 16/05/2015
#==============================================================================

# Energy, work, and power module (energy_work_power.rb)

require_relative 'constants'

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
#          distance >= 0
#          distance is in meters.
#     POST: Returns a Float.
#           returned value is in joules.
# Purpose: Consumes two numbers, force and distance. Returns the
# calculated work done.
def work_done(force, distance)
  return force * distance.to_f
end

# power: (union Int Float) (union Int Float) -> Float
# Condition:
#     PRE: work_done is in joules.
#          time > 0
#          time is in seconds.
#     POST: Returns a Float.
#           returned value is in watts.
# Purpose: Consumes two numbers, work done and time. Returns the
# calculated power.
def power(work_done, time)
  return work_done / time.to_f
end

# energy_efficiency: (union Int Float) (union Int Float) -> Float
# Conditions:
#     PRE: energy_input > 0
#          0 <= useful_energy_output <= energy_input
#          useful_energy_output and energy_input are in joules.
#     POST: Returns a Float.
#           returned value >= 0
# Purpose: Consumes two numbers, useful_energy_output and energy_input.
# Returns the calculated energy efficiency.
def energy_efficiency(useful_energy_output, energy_input)
  return (useful_energy_output / energy_input.to_f) * 100
end

# power_efficiency: (union Int Float) (union Int Float) -> Float
# Conditions:
#     PRE: power_input > 0
#          0 <= useful_power_output <= power_input
#          useful_power_output and power_input are in joules.
#     POST: Returns a Float.
#           returned value >= 0
# Purpose: Consumes two numbers, useful_power_output and power_input.
# Returns the calculated power efficiency.
def power_efficiency(useful_power_output, power_input)
  return (useful_power_output / power_input.to_f) * 100
end
