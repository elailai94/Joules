#==============================================================================
# Joules
#
# @description: Module for providing gravitational fields formulas
# @author: Elisha Lai
# @version: 0.3.2 03/06/2015
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
  #   distance > 0; distance is in metres
  # @return [Float]
  #   return value >= 0; return value is in newtons
  # @raise [ZeroDivisionError] if distance = 0
  # @example
  #   Joules.gravitational_force(2e30, 1.9e27, 7.8e11) #=> 4.166009204470743e+23
  def gravitational_force(object_mass1, object_mass2, distance)
    if distance.zero?
      raise ZeroDivisionError.new('divided by 0')
    else
      return (GRAVITATIONAL_CONSTANT * object_mass1 * object_mass2) /
             (distance ** 2)
    end
  end

  # Calculates the gravitational field strength given force and mass.
  # @param force [Int, Float]
  #   force is in newtons
  # @param mass [Int, Float]
  #   mass > 0; mass is in kilograms
  # @return [Float]
  #   return value is in metres per second squared
  # @raise [ZeroDivisionError] if mass = 0
  # @example
  #   Joules.gravitational_field_strength_v1(20, 0.5) #=> 40.0
  # @note There is one other method for calculating gravitational field strength.
  def gravitational_field_strength_v1(force, mass)
    if mass.zero?
      raise ZeroDivisionError.new('divided by 0')
    else
      return force / mass.to_f
    end
  end

  # Calculates the gravitational field strength given mass and distance.
  # @param mass [Int, Float]
  #   mass >= 0; mass is in kilograms
  # @param distance [Int, Float]
  #   distance > 0; distance is in metres
  # @return [Float]
  #   return value >= 0; return value is in metres per second squared
  # @raise [ZeroDivisionError] if distance = 0
  # @example
  #   Joules.gravitational_field_strength_v2(34.7, 9.3) #=> 2.6760203491733148e-11
  # @note There is one other method for calculating gravitational field strength.
  def gravitational_field_strength_v2(mass, distance)
    if distance.zero?
      raise ZeroDivisionError.new('divided by 0')
    else
      return (GRAVITATIONAL_CONSTANT * mass) / (distance ** 2)
    end
  end

  # Calculates the gravitational potential given mass and distance.
  # @param mass [Int, Float]
  #   mass >= 0; mass is in kilograms
  # @param distance [Int, Float]
  #   distance > 0; distance is in metres
  # @return [Float]
  #   return value <= 0; return value is in joules per kilogram
  # @raise [ZeroDivisionError] if distance = 0
  # @example
  #   Joules.gravitational_potential(6e24, 6.4e6) #=> -62531250.0
  def gravitational_potential(mass, distance)
    if distance.zero?
      raise ZeroDivisionError.new('divided by 0')
    else
      return (-GRAVITATIONAL_CONSTANT * mass) / distance
    end
  end

end
