#==============================================================================
# Joules
#
# @description: Module for providing oscillations formulas
# @author: Elisha Lai
# @version: 0.4.2 10/06/2015
#==============================================================================

# Oscillations module (oscillations.rb)

module Joules
  module_function

  # @!group Oscillations Methods

  # Calculates the acceleration of a particle in oscillation given angular velocity and particle displacement.
  # @param angular_velocity [Int, Float]
  #   angular_velocity is in radians per second
  # @param particle_displacement [Int, Float]
  #   particle_displacement is in metres
  # @return [Float]
  #   return value is in metres per second squared
  # @example
  #   Joules.particle_acceleration(2.4, 3) #=> -17.28
  # @note There is one other method for calculating acceleration.
  def particle_acceleration(angular_velocity, particle_displacement)
    return (- (angular_velocity ** 2.0) * displacement)
  end

  # Calculates the displacement of a particle in oscillation given amplitude, angular velocity, and time.
  # @param amplitude [Int, Float]
  #   amplitude >= 0; amplitude is in metres
  # @param angular_velocity [Int, Float]
  #   angular_velocity is in radians per second
  # @param time [Int, Float]
  #   time >= 0; time is in seconds
  # @return [Float]
  #   return value is in metres
  # @example
  #   Joules.particle_displacement(5, 2.4, 3) #=> 3.041756572661276
  def particle_displacement(amplitude, angular_velocity, time)
    return amplitude * Math.cos(angular_velocity * time)
  end

  # Calculates the velocity of a particle in oscillation given angular velocity, amplitude, and particle displacement.
  # @param angular_velocity [Int, Float]
  #   angular_velocity is in radians per second
  # @param amplitude [Int, Float]
  #   amplitude >= 0; amplitude is in metres
  # @param particle_displacement [Int, Float]
  #   particle_displacement is in metres
  # @param return_sign [String]
  #   return_sign is either '-' or '+'
  # @return [Float, Array<Float>]
  #   return list has a length of 2; each velocity in return list or return value is in metres per second
  # @example
  #   Joules.particle_velocity(2.4, 5, 3) #=> [9.6, -9.6]
  def particle_velocity(angular_velocity, amplitude, particle_displacement, return_sign = nil)
    return_value = angular_velocity * (((amplitude ** 2) - (particle_displacement ** 2)) ** 0.5)
    if return_sign == '-'
      return (- return_value)
    elsif return_sign == '+'
      return return_value
    else
      return [return_value, (- return_value)]
    end
  end

  # Calculates the maximum speed of a particle in oscillation given angular velocity and amplitude.
  # @param angular_velocity [Int, Float]
  #   angular_velocity is in radians per second
  # @param amplitude [Int, Float]
  #   amplitude >= 0; amplitude is in metres
  # @return [Float]
  #   return value is in metres per second
  # @example
  #   Joules.maximum_speed(2.4, 5) #=> 12.0
  def max_particle_speed(angular_velocity, amplitude)
    return angular_velocity * amplitude.to_f
  end

  # Calculates the maximum acceleration of a particle in oscillation given angular velocity and amplitude.
  # @param angular_velocity [Int, Float]
  #   angular_velocity is in radians per second
  # @param amplitude [Int, Float]
  #   amplitude >= 0; amplitude is in metres
  # @return [Float]
  #   return value >= 0; return value is in metres per second squared
  # @example
  #   Joules.maximum_acceleration(2.4, 5) #=> 28.799999999999997
  def max_particle_acceleration(angular_velocity, amplitude)
    return (angular_velocity ** 2.0) * amplitude
  end

  # Calculates the time period of a mass-spring system given mass and spring constant.
  # @param mass [Int, Float]
  #   mass >= 0; mass is in kilograms
  # @param spring_constant [Int, Float]
  #   spring_constant > 0; spring_constant is in newtons per metre
  # @return [Float]
  #   return value >= 0; return value is in seconds
  # @raise [ZeroDivisionError] if spring_constant = 0
  # @example
  #   Joules.time_period_v2(20, 5) #=> 12.566370614359172
  # @note There are two other methods for calculating time period.
  def time_period_v2(mass, spring_constant)
    if spring_constant.zero?
      raise ZeroDivisionError.new('divided by 0')
    else
      return 2 * Math::PI * ((mass / spring_constant.to_f) ** 0.5)
    end
  end

  # Calculates the time period of a simple pendulum given pendulum length.
  # @param pendulum_length [Int, Float]
  #   pendulum_length >= 0; pendulum_length is in metres
  # @return [Float]
  #   return value >= 0; return value is in seconds
  # @example
  #   Joules.time_period_v3(8.4) #=> 5.814133609631141
  # @note There are two other methods for calculating time period.
  def time_period_v3(pendulum_length)
    return 2 * Math::PI * ((pendulum_length / FREE_FALL_ACCELERATION) ** 0.5)
  end

  # @!endgroup

end
