#==============================================================================
# Joules
#
# @description: Module for providing mass and weight formulas
# @author: Elisha Lai
# @version: 0.4.1 07/06/2015
#==============================================================================

# Mass and weight module (mass_weight.rb)

module Joules
  module_function

  # Calculates the weight given mass.
  # @param mass [Int, Float]
  #   mass >= 0; mass is in kilograms
  # @return [Float]
  #   return value >= 0; return value is in newtons
  # @example
  #   Joules.weight(79.41) #=> 779.0121
  def weight(mass)
    return mass * FREE_FALL_ACCELERATION 
  end

  # Calculates the mass given weight.
  # @param weight [Int, Float]
  #   weight >= 0; weight is in newtons
  # @return [Float]
  #   return value >= 0; return value is in kilograms
  # @example
  #   Joules.mass(779.0121) #=> 79.41
  def mass(weight)
    return weight / FREE_FALL_ACCELERATION
  end

end
