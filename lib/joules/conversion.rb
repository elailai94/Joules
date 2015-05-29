#==============================================================================
# Joules
#
# @description: Module for providing conversion formulas
# @author: Elisha Lai
# @version: 0.2.0 25/05/2015
#==============================================================================

# Conversion module (conversion.rb)

# Calculates the equivalent angle in degrees given radians.
# @param angle [Int, Float]
#   angle is in radians
# @return [Float]
#   return value is in degrees
# @example
#   to_degrees(Math::PI/6) #=> 29.999999999999996
def to_degrees(angle)
  return (angle * 180) / Math::PI
end

# Calculates the equivalent angle in radians given degrees.
# @param angle [Int, Float]
#   angle is in degrees
# @return [Float]
#   return value is in radians
# @example
#   to_radians(30) #=> 0.5235987755982988
def to_radians(angle)
  return (angle * Math::PI) / 180
end

# Calculates the equivalent temperature in kelvins given celcius.
# @param temperature [Int, Float]
#   temperature is in celcius
# @return [Float]
#   return value is in kelvins
# @example
#   to_kelvins(20) #=> 293.15
def to_kelvins(temperature)
  return temperature + 273.15
end

# Calculates the equivalent temperature in celcius given kelvins.
# @param temperature [Int, Float]
#   temperature is in kelvins
# @return [Float]
#   return value is in celcius
# @example
#   to_celcius(293.15) #=> 20.0
def to_celcius(temperature)
  return temperature - 273.15
end

# Calculates the equivalent velocity in meters per second given kilometers per hour.
# @param velocity [Int, Float]
#   velocity is in kilometers per hour
# @return [Float]
#   return value is in meters per second
# @example
#   to_meters_per_second(200) #=> 55.55555555555556 
def to_meters_per_second(velocity)
  return (velocity * 1000) / 3600.0
end

# Calculates the equivalent velocity in kilometers per hour given meters per second.
# @param velocity [Int, Float]
#   velocity is in meters per second
# @return [Float]
#   return value is in kilometers per hour
# @example
#   to_kilometers_per_hour(50) #=> 180.0
def to_kilometers_per_hour(velocity)
  return (velocity * 3600) / 1000.0
end
