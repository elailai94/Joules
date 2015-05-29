#==============================================================================
# Joules
#
# @description: Module for providing conversion formulas
# @author: Elisha Lai
# @version: 0.2.0 25/05/2015
#==============================================================================

# Conversion module (conversion.rb)

# Calculates the equivalent angle in degrees given radians.
# @param radians [Int, Float]
#   radians is in radians
# @return [Float]
#   return value is in degrees
# @example
#   to_degrees(Math::PI/6) #=> 29.999999999999996
def to_degrees(radians)
  return (radians * 180) / Math::PI
end

# Calculates the equivalent angle in radians given degrees.
# @param degrees [Int, Float]
#   degrees is in degrees
# @return [Float]
#   return value is in radians
# @example
#   to_radians(30) #=> 0.5235987755982988
def to_radians(degrees)
  return (degrees * Math::PI) / 180
end
