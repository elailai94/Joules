#==============================================================================
# Joules
#
# @description: Module for providing electric fields formulas
# @author: Elisha Lai
# @version: 0.3.1 01/06/2015
#==============================================================================

# Electric fields module (electric_fields.rb)

module Joules
  module_function

  # Calculates the electric field strength given voltage and distance between two plates.
  # @param voltage [Int, Float]
  #   voltage is in volts
  # @param distance [Int, Float]
  #   distance > 0; distance is in meters
  # @return [Float]
  #   return value is in newtons per coulomb/volts per metre
  # @example
  #   electric_field_strength_v1(9, 0.1) #=> 90.0
  # @note There is one other method for calculating electric field strength.
  def electric_field_strength_v1(voltage, distance)
  	return voltage / distance.to_f
  end

  # Calculates the electric field strength given force and charge.
  # @param force [Int, Float]
  #   force is in newtons
  # @param charge [Int, Float]
  #   charge is in coulombs
  # @return [Float]
  #   return value is in newtons per coulomb/volts per metre
  # @example
  #   electric_field_strength_v2(50, 1.3e-6) #=> 38461538.461538464
  # @note There is one other method for calculating electric field strength.
  def electric_field_strength_v2(force, charge)
    return force / charge.to_f
  end

  # Calculates the electric potential given charge and distance.
  # @param charge [Int, Float]
  #   charge is in coulombs
  # @param distance [Int, Float]
  #   distance > 0; distance is in meters
  # @return [Float]
  #   return value is in volts
  # @example
  #   electric_potential(3.2e-19, 0.2) #=> 1.4386887511131779e-08
  def electric_potential(charge, distance)
    return charge / (4 * Math::PI * FREE_SPACE_PERMITTIVITY * distance)
  end

end
