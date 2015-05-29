#==============================================================================
# Joules
#
# @description: Module for providing density formulas
# @author: Elisha Lai
# @version: 0.2.0 25/05/2015
#==============================================================================

# Density module (density.rb)

# Calculates the density given mass and volume.
# @param mass [Int, Float]
#   mass >= 0; mass is in kilograms
# @param volume [Int, Float]
#   volume > 0; volume is in meters cubed
# @return [Float]
#   return value >= 0; return value is in kilograms per meter cubed
# @example
#   density(8.96, 0.002) #=> 4480.0   
def density(mass, volume)
  return mass / volume.to_f
end
