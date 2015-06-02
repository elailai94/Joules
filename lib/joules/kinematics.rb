#==============================================================================
# Joules
#
# @description: Module for providing kinematics formulas
# @author: Elisha Lai
# @version: 0.3.1 01/06/2015
#==============================================================================

# Kinematics module (kinematics.rb)

module Joules
  module_function

  # Calculates the average speed given distance and time.
  # @param distance [Int, Float]
  #   distance >= 0; distance is in meters
  # @param time [Int, Float]
  #   time > 0; time is in seconds
  # @return [Float]
  #   return value >= 0; return value is in meters per second
  # @example
  #   Joules.avg_speed(30, 2.4) #=> 12.5
  def avg_speed(distance, time)
    return distance / time.to_f 
  end

  # Calculates the average velocity given displacement and time.
  # @param displacement [Int, Float]
  #   displacement is in meters
  # @param time [Int, Float]
  #   time > 0; time is in seconds
  # @return [Float]
  #   return value is in meters per second
  # @example
  #   Joules.avg_velocity(180, 4.8) #=> 37.5 
  def avg_velocity(displacement, time)
    return displacement / time.to_f
  end

  # Calculates the acceleration given initial velocity, final velocity, and time.
  # @param initial_velocity [Int, Float]
  #   initial_velocity is in meters per second
  # @param final_velocity [Int, Float]
  #   final_velocity is in meters per second
  # @param time [Int, Float]
  #   time > 0; time is in seconds
  # @return [Float]
  #   return value is in meters per second squared
  # @example
  #   Joules.acceleration(20, 35, 2.4) #=> 6.25
  def acceleration(initial_velocity, final_velocity, time)
    return (final_velocity - initial_velocity) / time.to_f
  end

  # Calculates the final velocity given initial velocity, acceleration, and time.
  # @param initial_velocity [Int, Float]
  #   initial_velocity is in meters per second
  # @param acceleration [Int, Float]
  #   acceleration is in meters per second squared
  # @param time [Int, Float]
  #   time >= 0; time is in seconds
  # @return [Float]
  #   return value is in meters per second
  # @example
  #   Joules.final_velocity_v1(20, 6.25, 2.4) #=> 35.0
  # @note There is one other method for calculating final velocity.
  def final_velocity_v1(initial_velocity, acceleration, time)
    return initial_velocity + (acceleration * time.to_f)
  end

  # Calculates the final velocity given initial velocity, acceleration, and displacement.
  # @param initial_velocity [Int, Float]
  #   initial_velocity is in meters per second
  # @param acceleration [Int, Float]
  #   acceleration is in meters per second squared
  # @param displacement [Int, Float]
  #   displacement is in meters
  # @return [Float]
  #   return value is in meters per second
  # @example
  #   Joules.final_velocity_v2(20, 6.25, 66) #=> 35.0
  # @note There is one other method for calculating final velocity.
  def final_velocity_v2(initial_velocity, acceleration, displacement)
    return ((initial_velocity ** 2) + (2 * acceleration * displacement)) ** 0.5
  end

  # Calculates the displacement given initial velocity, final velocity, and time.
  # @param initial_velocity [Int, Float]
  #   initial_velocity is in meters per second
  # @param final_velocity [Int, Float]
  #   final_velocity is in meters per second
  # @param time [Int, Float]
  #   time >= 0; time is in seconds
  # @return [Float]
  #   return value is in meters
  # @example
  #   Joules.displacement_v1(20, 35, 2.4) #=> 66.0
  # @note There are two other methods for calculating displacement.
  def displacement_v1(initial_velocity, final_velocity, time)
    return 0.5 * (initial_velocity + final_velocity) * time
  end

  # Calculates the displacement given initial velocity, acceleration, and time.
  # @param initial_velocity [Int, Float]
  #   initial_velocity is in meters per second
  # @param acceleration [Int, Float]
  #   acceleration is in meters per second squared
  # @param time [Int, Float]
  #   time >= 0; time is in seconds
  # @return [Float]
  #   return value is in meters
  # @example
  #   Joules.displacement_v2(20, 6.25, 2.4) #=> 66.0
  # @note There are two other methods for calculating displacement.
  def displacement_v2(initial_velocity, acceleration, time)
    return (initial_velocity * time) + (0.5 * acceleration * (time ** 2))
  end

  # Calculates the displacement given final velocity, acceleration, and time.
  # @param final_velocity [Int, Float]
  #   final_velocity is in meters per second
  # @param acceleration [Int, Float]
  #   acceleration is in meters per second squared
  # @param time [Int, Float]
  #   time >= 0; time is in seconds
  # @return [Float]
  #   return value is in meters
  # @example
  #   Joules.displacement_v3(35, 6.25, 2.4) #=> 66.0
  # @note There are two other methods for calculating displacement.
  def displacement_v3(final_velocity, acceleration, time)
    return (final_velocity * time) - (0.5 * acceleration * (time ** 2))
  end

end
