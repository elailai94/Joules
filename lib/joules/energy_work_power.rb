#==============================================================================
# Joules
#
# @description: Module for providing energy, work, and power formulas
# @author: Elisha Lai
# @version: 0.3.0 29/05/2015
#==============================================================================

# Energy, work, and power module (energy_work_power.rb)

require_relative 'constants'

# Calculates the gravitational potential energy given mass and height.
# @param mass [Int, Float]
#   mass >= 0; mass is in kilograms
# @param height [Int, Float]
#   height >= 0; height is in meters
# @return [Float]
#   return value >= 0; return value is in joules
# @example
#   gravitational_potential_energy(0.5, 6) #=> 29.43
def gravitational_potential_energy(mass, height)
  return mass * FREE_FALL_ACCELERATION * height
end

# Calculates the elastic potential energy given spring constant and extension.
# @param spring_constant [Int, Float]
#   spring_constant >= 0; spring_constant is in newtons per meter
# @param extension [Int, Float]
#   extension >= 0; extension is in meters
# @return [Float]
#   return value >= 0; return value is in joules
# @example
#   elastic_potential_energy(81.75, 2.4) #=> 235.44
def elastic_potential_energy(spring_constant, extension)
  return 0.5 * spring_constant * (extension ** 2)
end

# Calculates the kinetic energy given mass and velocity.
# @param mass [Int, Float]
#   mass >= 0; mass is in kilograms
# @param velocity [Int, Float]
#   velocity is in meters per second
# @return [Float]
#   return value >= 0; return value is in joules
# @example
#   kinetic_energy(500, 22) #=> 121000.0 
def kinetic_energy(mass, velocity)
  return 0.5 * mass * (velocity ** 2)
end

# Calculates the work done given force and distance.
# @param force [Int, Float]
#   force is in newtons
# @param distance [Int, Float]
#   distance >= 0; distance is in meters
# @return [Float]
#   return value is in joules
# @example
#   work_done(40, 2.34) #=> 93.6
def work_done(force, distance)
  return force * distance.to_f
end

# Calculates the power given work done and time.
# @param work_done [Int, Float]
#   work_done is in joules
# @param time [Int, Float]
#   time > 0; time is in seconds
# @return [Float]
#   return value is in watts
# @example
#   power_v1(28, 7) #=> 4.0
# @note There are three other methods for calculating power.
def power_v1(work_done, time)
  return work_done / time.to_f
end

# Calculates the energy efficiency given useful energy output and energy input.
# @param useful_energy_output [Int, Float]
#   0 <= useful_energy_output <= energy_input; useful_energy_output is in joules
# @param energy_input [Int, Float]
#   energy_input > 0; energy_input is in joules
# @return [Float]
#   return value >= 0
# @example
#   energy_efficiency(16, 20) #=> 80.0 
def energy_efficiency(useful_energy_output, energy_input)
  return (useful_energy_output / energy_input.to_f) * 100
end

# Calculates the power efficiency given useful power output and power input.
# @param useful_power_output [Int, Float]
#   0 <= useful_power_output <= power_input; useful_power_output is in watts
# @param power_input [Int, Float]
#   power_input > 0; power_input is in watts
# @return [Float]
#   return value >= 0
# @example
#   power_efficiency(26, 40) #=> 65.0
def power_efficiency(useful_power_output, power_input)
  return (useful_power_output / power_input.to_f) * 100
end
