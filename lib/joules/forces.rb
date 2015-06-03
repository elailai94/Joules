#==============================================================================
# Joules
#
# @description: Module for providing forces formulas
# @author: Elisha Lai
# @version: 0.3.2 03/06/2015
#==============================================================================

# Forces module (forces.rb)

module Joules
  module_function

  # Calculates the force given mass and acceleration.
  # @param mass [Int, Float]
  #   mass >= 0; mass is in kilograms
  # @param acceleration [Int, Float]
  #   acceleration is in metres per second squared
  # @return [Float]
  #   return value is in newtons
  # @example
  #   Joules.force_v1(120, 2.67) #=> 320.4
  # @note There are two other methods for calculating force. 
  def force_v1(mass, acceleration)
    return mass * acceleration.to_f
  end

  # Calculates the force given spring constant and extension.
  # @param spring_constant [Int, Float]
  #   spring_constant >= 0; spring_constant is in newtons per metre
  # @param extension [Int, Float]
  #   extension >= 0; extension is in metres
  # @return [Float]
  #   return value >= 0; return value is in newtons
  # @example
  #   Joules.force_v2(81.75, 2.4) #=> 196.2
  # @note There are two other methods for calculating force.
  def force_v2(spring_constant, extension)
    return spring_constant * extension.to_f
  end

  # Calculates the force given initial velocity, final velocity, mass, and time.
  # @param initial_velocity [Int, Float]
  #   initial_velocity is in metres per second
  # @param final_velocity [Int, Float]
  #   final_velocity is in metres per second
  # @param mass [Int, Float]
  #   mass >= 0; mass is in kilograms
  # @param time [Int, Float]
  #   time > 0; time is in seconds
  # @return [Float]
  #   return value is in newtons
  # @raise [ZeroDivisionError] if time = 0
  # @example
  #   Joules.force_v3(20, 35, 50, 2.4) #=> 312.5
  # @note There are two other methods for calculating force.
  def force_v3(initial_velocity, final_velocity, mass, time)
    if time.zero?
      raise ZeroDivisionError.new('divided by 0')
    else
      return ((final_velocity - initial_velocity) * mass) / time.to_f
    end
  end

  # Calculates the moment given force and distance.
  # @param force [Int, Float]
  #   force is in newtons
  # @param distance [Int, Float]
  #   distance >= 0; distance is in metres
  # @return [Float]
  #   return value is in newton metres
  # @example
  #   Joules.moment(23, 4.5) #=> 103.5
  def moment(force, distance)
    return force * distance.to_f
  end

end
