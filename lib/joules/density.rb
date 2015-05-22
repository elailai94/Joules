#==============================================================================
# Joules
#
# @description: Module for providing density formulas
# @author: Elisha Lai
# @version: 0.0.2 16/05/2015
#==============================================================================

# Density module (density.rb)

# density: (union Int Float) (union Int Float) -> Float
# Conditions:
#     PRE: mass >= 0
#          mass is in kilograms.
#          volume > 0
#          volume is in meters cubed.
#     POST: Returns a Float.
#           returned value >= 0 
#           returned value is in kilograms per meter cubed.
# Purpose: Consumes two numbers, mass and volume. Returns the
# calculated density.
def density(mass, volume)
  return mass / volume.to_f
end
