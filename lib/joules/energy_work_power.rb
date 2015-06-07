#==============================================================================
# Joules
#
# @description: Module for providing energy, work, and power formulas
# @author: Elisha Lai
# @version: 0.4.1 07/06/2015
#==============================================================================

# Energy, work, and power module (energy_work_power.rb)

module Joules
  module_function

  # Calculates the gravitational potential energy given mass and height.
  # @param mass [Int, Float]
  #   mass >= 0; mass is in kilograms
  # @param height [Int, Float]
  #   height >= 0; height is in metres
  # @return [Float]
  #   return value >= 0; return value is in joules
  # @example
  #   Joules.gravitational_potential_energy(0.5, 6) #=> 29.43
  def gravitational_potential_energy(mass, height)
    return mass * FREE_FALL_ACCELERATION * height
  end

  # Calculates the elastic potential energy given spring constant and extension.
  # @param spring_constant [Int, Float]
  #   spring_constant >= 0; spring_constant is in newtons per metre
  # @param extension [Int, Float]
  #   extension >= 0; extension is in metres
  # @return [Float]
  #   return value >= 0; return value is in joules
  # @example
  #   Joules.elastic_potential_energy(81.75, 2.4) #=> 235.44
  def elastic_potential_energy(spring_constant, extension)
    return 0.5 * spring_constant * (extension ** 2)
  end

  # Calculates the kinetic energy given mass and velocity.
  # @param mass [Int, Float]
  #   mass >= 0; mass is in kilograms
  # @param velocity [Int, Float]
  #   velocity is in metres per second
  # @return [Float]
  #   return value >= 0; return value is in joules
  # @example
  #   Joules.kinetic_energy_v1(500, 22) #=> 121000.0
  # @note There is one other method for calculating kinetic energy.
  def kinetic_energy_v1(mass, velocity)
    return 0.5 * mass * (velocity ** 2)
  end

  # Calculates the work done given force, displacement, and angle.
  # @param force [Int, Float]
  #   force is in newtons
  # @param displacement [Int, Float]
  #   displacement is in metres
  # @param angle [Int, Float]
  #   angle is in degrees
  # @return [Float]
  #   return value is in joules
  # @example
  #   Joules.work_done(40, 2.34) #=> 93.6
  def work_done(force, displacement, angle = 0)
    return force * displacement * Math.cos(to_radians(angle))
  end

  # Calculates the power given work done and time.
  # @param work_done [Int, Float]
  #   work_done is in joules
  # @param time [Int, Float]
  #   time > 0; time is in seconds
  # @return [Float]
  #   return value is in watts
  # @raise [ZeroDivisionError] if time = 0
  # @example
  #   Joules.power_v1(28, 7) #=> 4.0
  # @note There are four other methods for calculating power.
  def power_v1(work_done, time)
    if time.zero?
      raise ZeroDivisionError.new('divided by 0')
    else
      return work_done / time.to_f
    end
  end

  # Calculates the power given force, velocity, and angle.
  # @param force [Int, Float]
  #   force is in newtons
  # @param velocity [Int, Float]
  #   velocity is in meters per second
  # @param angle [Int, Float]
  #   angle is in degrees
  # @return [Float]
  #   return value is in watts
  # @example
  #   Joules.power_v2(42, 2.3) #=> 96.6
  # @note There are four other methods for calculating power.
  def power_v2(force, velocity, angle = 0)
    return force * velocity * Math.cos(to_radians(angle))
  end

  # Calculates the energy efficiency given useful energy output and energy input.
  # @param useful_energy_output [Int, Float]
  #   0 <= useful_energy_output <= energy_input; useful_energy_output is in joules
  # @param energy_input [Int, Float]
  #   energy_input > 0; energy_input is in joules
  # @return [Float]
  #   return value >= 0
  # @raise [ZeroDivisionError] if energy_input = 0
  # @example
  #   Joules.energy_efficiency(16, 20) #=> 80.0 
  def energy_efficiency(useful_energy_output, energy_input)
    if energy_input.zero?
      raise ZeroDivisionError.new('divided by 0')
    else
      return (useful_energy_output / energy_input.to_f) * 100
    end
  end

  # Calculates the power efficiency given useful power output and power input.
  # @param useful_power_output [Int, Float]
  #   0 <= useful_power_output <= power_input; useful_power_output is in watts
  # @param power_input [Int, Float]
  #   power_input > 0; power_input is in watts
  # @return [Float]
  #   return value >= 0
  # @raise [ZeroDivisionError] if power_input = 0
  # @example
  #   Joules.power_efficiency(26, 40) #=> 65.0
  def power_efficiency(useful_power_output, power_input)
    if power_input.zero?
      raise ZeroDivisionError.new('divided by 0')
    else
      return (useful_power_output / power_input.to_f) * 100
    end
  end

end
