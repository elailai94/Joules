#==============================================================================
# Joules
#
# @description: Module for providing circular motion formulas
# @author: Elisha Lai
# @version: 0.4.1 07/06/2015
#==============================================================================

# Circular motion module (circular_motion.rb)

module Joules
  module_function

  # Calculates the angular velocity given linear velocity and radius.
  # @param linear_velocity [Int, Float]
  #   linear_velocity is in metres per second
  # @param radius [Int, Float]
  #   radius > 0; radius is in metres
  # @return [Float]
  #   return value is in radians per second
  # @raise [ZeroDivisionError] if radius = 0
  # @example
  #   Joules.angular_velocity_v1(9, 3) #=> 3.0
  # @note There is one other method for calculating angular velocity. 
  def angular_velocity_v1(linear_velocity, radius)
  	if radius.zero?
      raise ZeroDivisionError.new('divided by 0')
  	else 
      return linear_velocity / radius.to_f
    end
  end

  # Calculates the angular velocity given frequency of rotation.
  # @param frequency_of_rotation [Int, Float]
  #   frequency_of_rotation >= 0; frequency_of_rotation is in hertz
  # @return [Float]
  #   return value >= 0; return value is in radians per second
  # @example
  #   Joules.angular_velocity_v2(1.5) #=> 9.42477796076938
  # @note There is one other method for calculating angular velocity. 
  def angular_velocity_v2(frequency_of_rotation)
  	return 2 * Math::PI * frequency_of_rotation
  end

  # Calculates the angular acceleration given initial angular velocity, final angular velocity, and time.
  # @param initial_angular_velocity [Int, Float]
  #   initial_angular_velocity is in radians per second
  # @param final_angular_velocity [Int, Float]
  #   final_angular_velocity is in radians per second
  # @param time [Int, Float]
  #   time > 0; time is in seconds
  # @return [Float]
  #   return value is in radians per second squared
  # @raise [ZeroDivisionError] if time = 0
  # @example
  #   Joules.angular_acceleration(20, 35, 2.4) #=> 6.25
  def angular_acceleration(initial_angular_velocity, final_angular_velocity, time)
  	if time.zero?
      raise ZeroDivisionError.new('divided by 0')
  	else
      return (final_angular_velocity - initial_angular_velocity) / time.to_f
    end
  end

  # Calculates the centripetal acceleration given linear velocity and radius.
  # @param linear_velocity [Int, Float]
  #   linear_velocity is in metres per second
  # @param radius [Int, Float]
  #   radius > 0; radius is in metres
  # @return [Float]
  #   return value >= 0; return value is in metres per second squared
  # @raise [ZeroDivisionError] if radius = 0
  # @example
  #   Joules.centripetal_acceleration_v1(9, 3) #=> 27.0
  # @note There is one other method for calculating centripetal acceleration.
  def centripetal_acceleration_v1(linear_velocity, radius)
  	if radius.zero?
      raise ZeroDivisionError.new('divided by 0')
  	else 
  	  return (linear_velocity ** 2.0) / radius
    end
  end

  # Calculates the centripetal acceleration given angular velocity and radius.
  # @param angular_velocity [Int, Float]
  #   angular_velocity is in radians per second
  # @param radius [Int, Float]
  #   radius >= 0; radius is in metres
  # @return [Float]
  #   return value >= 0; return value is in metres per second squared
  # @example
  #   Joules.centripetal_acceleration_v2(3, 3) #=> 27.0
  # @note There is one other method for calculating centripetal acceleration.
  def centripetal_acceleration_v2(angular_velocity, radius)
  	return (angular_velocity ** 2.0) * radius
  end

  # Calculates the centripetal force given mass, linear velocity, and radius.
  # @param mass [Int, Float]
  #   mass >= 0; mass is in kilograms
  # @param linear_velocity [Int, Float]
  #   linear_velocity is in metres per second
  # @param radius [Int, Float]
  #   radius >= 0; radius is in metres
  # @return [Float]
  #   return value >= 0; return value is in newtons
  # @example
  #   Joules.centripetal_force_v1(2000, 5.56, 2.1) #=> 29441.523809523802
  # @note There is one other method for calculating centripetal force.
  def centripetal_force_v1(mass, linear_velocity, radius)
  	if radius.zero?
      raise ZeroDivisionError.new('divided by 0')
  	else
      return (mass * (linear_velocity ** 2.0)) / radius
    end 
  end

  # Calculates the centripetal force given mass, angular velocity, and radius.
  # @param mass [Int, Float]
  #   mass >= 0; mass is in kilograms
  # @param angular_velocity [Int, Float]
  #   angular_velocity is in radians per second
  # @param radius [Int, Float]
  #   radius >= 0; radius is in metres
  # @return [Float]
  #   return value >= 0; return value is in newtons
  # @example
  #   Joules.centripetal_force_v2(53.5, 3, 3) #=> 1444.5
  # @note There is one other method for calculating centripetal force.
  def centripetal_force_v2(mass, angular_velocity, radius)
  	return mass * (angular_velocity ** 2.0) * radius
  end

  # Calculates the angular momentum given moment of inertia and angular velocity.
  # @param moment_of_inertia [Int, Float]
  #   moment_of_inertia is in kilogram metres squared
  # @param angular_velocity [Int, Float]
  #   angular_velocity is in radians per second
  # @return [Float]
  #   return value is in kilogram metres squared per second
  # @example
  #   Joules.angular_momentum(2, 2.5) #=> 5.0
  def angular_momentum(moment_of_inertia, angular_velocity)
    return moment_of_inertia * angular_velocity.to_f
  end

  # Calculates the angular kinetic energy given moment of inertia and angular velocity.
  # @param moment_of_inertia [Int, Float]
  #   moment_of_inertia is in kilogram metres squared
  # @param angular_velocity [Int, Float]
  #   angular_velocity is in radians per second
  # @return [Float]
  #   return value is in joules
  # @example
  #   Joules.angular_kinetic_energy(5, 2.3) #=> 13.224999999999998
  def angular_kinetic_energy(moment_of_inertia, angular_velocity)
    return 0.5 * moment_of_inertia * (angular_velocity ** 2)
  end

end
