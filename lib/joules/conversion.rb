#==============================================================================
# Joules
#
# @description: Module for providing conversion formulas
# @author: Elisha Lai
# @version: 0.4.3 13/06/2015
#==============================================================================

# Conversion module (conversion.rb)

module Joules
  module_function

  # @!group Angle Conversion Methods

  # Calculates the equivalent angle in degrees given radians.
  # @param angle [Int, Float]
  #   angle is in radians
  # @return [Float]
  #   return value is in degrees
  # @example
  #   Joules.to_degrees(Math::PI/6) #=> 29.999999999999996
  def to_degrees(angle)
    return (angle * 180) / Math::PI
  end

  # Calculates the equivalent angle in radians given degrees.
  # @param angle [Int, Float]
  #   angle is in degrees
  # @return [Float]
  #   return value is in radians
  # @example
  #   Joules.to_radians(30) #=> 0.5235987755982988
  def to_radians(angle)
    return (angle * Math::PI) / 180
  end

  # @!endgroup

  # @!group Temperature Conversion Methods

  # Calculates the equivalent temperature in kelvins given celcius.
  # @param temperature [Int, Float]
  #   temperature is in celcius
  # @return [Float]
  #   return value is in kelvins
  # @example
  #   Joules.to_kelvins(20) #=> 293.15
  def to_kelvins(temperature)
    return temperature + 273.15
  end

  # Calculates the equivalent temperature in celcius given kelvins.
  # @param temperature [Int, Float]
  #   temperature is in kelvins
  # @return [Float]
  #   return value is in celcius
  # @example
  #   Joules.to_celcius(293.15) #=> 20.0
  def to_celcius(temperature)
    return temperature - 273.15
  end

  # @!endgroup

  # @!group Velocity Conversion Methods

  # Calculates the equivalent velocity in metres per second given kilometres per hour.
  # @param velocity [Int, Float]
  #   velocity is in kilometres per hour
  # @return [Float]
  #   return value is in metres per second
  # @example
  #   Joules.to_metres_per_second(200) #=> 55.55555555555556 
  def to_metres_per_second(velocity)
    return (velocity * 1000) / 3600.0
  end

  # Calculates the equivalent velocity in kilometres per hour given metres per second.
  # @param velocity [Int, Float]
  #   velocity is in metres per second
  # @return [Float]
  #   return value is in kilometres per hour
  # @example
  #   Joules.to_kilometres_per_hour(50) #=> 180.0
  def to_kilometres_per_hour(velocity)
    return (velocity * 3600) / 1000.0
  end

  # @!endgroup

end
