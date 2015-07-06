#==============================================================================
# Joules
#
# @description: Module for providing density formulas
# @author: Elisha Lai
# @version: 0.4.4 05/07/2015
#==============================================================================

# Density module (density.rb)

module Joules
  module_function

  # @!group Density Methods

  # Calculates the density given mass and volume.
  # @param mass [Int, Float]
  #   mass >= 0; mass is in kilograms
  # @param volume [Int, Float]
  #   volume > 0; volume is in metres cubed
  # @return [Float]
  #   return value >= 0; return value is in kilograms per metre cubed
  # @raise [ZeroDivisionError] if volume = 0
  # @example
  #   Joules.density(8.96, 0.002) #=> 4480.0
  def density(mass, volume)
    if volume.zero?
      fail ZeroDivisionError.new('divided by 0')
    else
      return mass / volume.to_f
    end
  end

  # @!endgroup
end
