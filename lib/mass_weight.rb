#==============================================================================
# Joules
#
# @description: Module for providing mass and weight equations
# @author: Elisha Lai
# @version: 0.0.1 16/05/2015
#==============================================================================

# Mass and weight module (mass_weight.rb)

require 'constants'

# weight: (union Int Float) -> Float
# Conditions:
#     PRE: mass >= 0
#          mass is in kilograms.
#     POST: Returns a Float.
#           returned value >= 0
#           returned value is in kilogram meters per second squared/newtons.
# Purpose: Consumes a number, mass, and returns the calculated weight.
def weight(mass)
  return mass * FREE_FALL_ACCELERATION 
end

# mass: (union Int Float) -> Float
# Conditions:
#     PRE: weight >= 0
#          weight is in kilogram meters per second squared/newtons. 
#     POST: Returns a Float.
#           returned value >= 0
#           returned value is in kilograms.
# Purpose: Consumes a numberm weight, and returns the calculated mass.
def mass(weight)
  return weight / FREE_FALL_ACCELERATION
end
