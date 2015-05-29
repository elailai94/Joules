#==============================================================================
# Joules
#
# @description: Module for providing pressure formulas
# @author: Elisha Lai
# @version: 0.3.0 29/05/2015
#==============================================================================

# Pressure module (pressure.rb)

require_relative 'constants'

# Calculates the pressure given force and area.
# @param force [Int, Float]
#   force >= 0; force is in newtons
# @param area [Int, Float]
#   area > 0; area is in meters cubed
# @return [Float]
#   return value >= 0; return value is in pascals
# @example
#   pressure(98, 0.04) #=> 2450.0 
def pressure(force, area)
  return force / area.to_f
end

# Calculates the hydrostatic pressure given density and height.
# @param density [Int, Float]
#   density >= 0; density is in kilograms per meter cubed
# @param height [Int, Float]
#   height >= 0; height is in meters
# @return [Float]
#   return value >= 0; return value is in pascals
# @example
#   hydrostatic_pressure(1000, 5) #=> 49050.0
def hydrostatic_pressure(density, height)
  return density * FREE_FALL_ACCELERATION * height
end
