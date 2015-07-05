#==============================================================================
# Joules
#
# @description: Module for providing pressure formulas
# @author: Elisha Lai
# @version: 0.4.4 05/07/2015
#==============================================================================

# Pressure module (pressure.rb)

module Joules
  module_function

  # @!group Pressure Methods

  # Calculates the pressure given force and area.
  # @param force [Int, Float]
  #   force >= 0; force is in newtons
  # @param area [Int, Float]
  #   area > 0; area is in metres squared
  # @return [Float]
  #   return value >= 0; return value is in pascals
  # @raise [ZeroDivisionError] if area = 0
  # @example
  #   Joules.pressure(98, 0.04) #=> 2450.0
  def pressure(force, area)
    if area.zero?
      raise ZeroDivisionError.new('divided by 0')
    else
      return force / area.to_f
    end
  end

  # Calculates the hydrostatic pressure given density and height.
  # @param density [Int, Float]
  #   density >= 0; density is in kilograms per metre cubed
  # @param height [Int, Float]
  #   height >= 0; height is in metres
  # @return [Float]
  #   return value >= 0; return value is in pascals
  # @example
  #   Joules.hydrostatic_pressure(1000, 5) #=> 49050.0
  def hydrostatic_pressure(density, height)
    return density * FREE_FALL_ACCELERATION * height
  end

  # @!endgroup

end
