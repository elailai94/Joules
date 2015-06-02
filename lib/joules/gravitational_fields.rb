#==============================================================================
# Joules
#
# @description: Module for providing gravitational fields formulas
# @author: Elisha Lai
# @version: 0.3.1 01/06/2015
#==============================================================================

# Gravitational fields module (gravitational_fields.rb)

module Joules
  module_function

  # Calculates the gravitational force given object mass 1, object mass 2, and distance between the centres of the two objects.
  # @param object_mass1 [Int, Float]
  #   object_mass1 >= 0; object_mass1 is in kilograms
  # @param object_mass2 [Int, Float]
  #   object_mass2 >= 0; object_mass2 is in kilograms
  # @param distance [Int, Float]
  #   distance > 0; distance is in meters
  # @return [Float]
  #   return value >= 0; return value is in newtons
  # @example
  #   Joules.gravitational_force(2e30, 1.9e27, 7.8e11) #=> 4.166009204470743e+23
  def gravitational_force(object_mass1, object_mass2, distance)
    return (GRAVITATIONAL_CONSTANT * object_mass1 * object_mass2) /
           (distance ** 2)
  end

  # Calculates the gravitational field strength given force and mass.
  # @param force [Int, Float]
  #   force is in newtons
  # @param mass [Int, Float]
  #   mass > 0; mass is in kilograms
  # @return [Float]
  #   return value is in meters per second squared
  # @example
  #   Joules.gravitational_field_strength_v1(20, 0.5) #=> 40.0
  # @note There is one other method for calculating gravitational field strength.
  def gravitational_field_strength_v1(force, mass)
    return force / mass.to_f
  end

  # Calculates the gravitational field strength given mass and distance.
  # @param mass [Int, Float]
  #   mass >= 0; mass is in kilograms
  # @param distance [Int, Float]
  #   distance > 0; distance is in meters
  # @return [Float]
  #   return value >= 0; return value is in meters per second squared
  # @example
  #   Joules.gravitational_field_strength_v2(34.7, 9.3) #=> 2.6760203491733148e-11
  # @note There is one other method for calculating gravitational field strength.
  def gravitational_field_strength_v2(mass, distance)
  	return (GRAVITATIONAL_CONSTANT * mass) / (distance ** 2)
  end

  # Calculates the gravitational potential given mass and distance.
  # @param mass [Int, Float]
  #   mass >= 0; mass is in kilograms
  # @param distance [Int, Float]
  #   distance > 0; distance is in meters
  # @return [Float]
  #   return value <= 0; return value is in joules per kilogram
  # @example
  #   Joules.gravitational_potential(6e24, 6.4e6) #=> -62531250.0
  def gravitational_potential(mass, distance)
  	return (-GRAVITATIONAL_CONSTANT * mass) / distance
  end

end
