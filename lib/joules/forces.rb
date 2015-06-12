#==============================================================================
# Joules
#
# @description: Module for providing forces formulas
# @author: Elisha Lai
# @version: 0.4.3 13/06/2015
#==============================================================================

# Forces module (forces.rb)

module Joules
  module_function

  # @!group Forces Methods

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

  # Calculates the maximum friction force given coefficient of friction and normal force.
  # @param coefficient_of_friction [Int, Float]
  #   coefficient_of_friction >= 0
  # @param normal_force [Int, Force]
  #   normal_force is in newtons
  # @return [Float]
  #   return value is in newtons
  # @example
  #   Joules.maximum_friction_force(0.4, 29.43) #=> 11.772
  def maximum_friction_force(coefficient_of_friction, normal_force)
    return coefficient_of_friction * normal_force.to_f
  end

  # Calculates the buoyant force given density and volume of liquid displaced.
  # @param density [Int, Float]
  #   density >= 0; density is in kilograms per metre cubed
  # @param volume_of_liquid_displaced [Int, Float]
  #   volume_of_liquid_displaced >= 0; volume_of_liquid_displaced is in metres cubed
  # @return [Float]
  #   return value >= 0; return value is in newtons
  # @example
  #   Joules.buoyant_force(1000, 0.00150) #=> 14.715
  def buoyant_force(density, volume_of_liquid_displaced)
    return density * FREE_FALL_ACCELERATION * volume_of_liquid_displaced
  end

  # Calculates the moment given force, distance, and angle.
  # @param force [Int, Float]
  #   force is in newtons
  # @param distance [Int, Float]
  #   distance >= 0; distance is in metres
  # @param angle [Int, Float]
  #   angle is in degrees
  # @return [Float]
  #   return value is in newton metres
  # @example
  #   Joules.moment(23, 4.5) #=> 103.5
  def moment(force, distance, angle = 90)
    return force * distance * Math.sin(to_radians(angle))
  end

  # @!endgroup

end
