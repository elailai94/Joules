#==============================================================================
# Joules
#
# @description: Module for providing pressure formulas
# @author: Elisha Lai
# @version: 0.0.1 16/05/2015
#==============================================================================

# Pressure module (pressure.rb)

require_relative 'constants'

# pressure: (union Int Float) (union Int Float) -> Float
# Conditions:
#     PRE: force >= 0
#          force is in newtons.
#          area > 0
#          area is in meters cubed.
#     POST: Returns a Float.
#           returned value >= 0
#           returned value is in pascals.
# Purpose: Consumes two numbers, force and area. Returns the calculated
# pressure.
def pressure(force, area)
  return force / area.to_f
end

# hydrostatic_pressure: (union Int Float) (union Int Float) -> Float
# Conditions:
#     PRE: density >= 0
#          density is in kilograms per meter cubed.
#          height >= 0
#          height is in meters.
#     POST: Returns a Float.
#           returned value >= 0
#           returned value is in pascals.
# Purpose: Consumes two numbers, density and height. Returns the calculated
# hydrostatic pressure.
def hydrostatic_pressure(density, height)
  return density * FREE_FALL_ACCELERATION * height
end
