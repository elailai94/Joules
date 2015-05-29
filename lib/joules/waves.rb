#==============================================================================
# Joules
#
# @description: Module for providing waves formulas
# @author: Elisha Lai
# @version: 0.2.0 25/05/2015
#==============================================================================

# Waves module (waves.rb)

require_relative 'conversion'

# Calculates the wave speed given frequency and wavelength.
# @param frequency [Int, Float]
#   frequency > 0; frequency is in hertz
# @param wavelength [Int, Float]
#   wavelength >= 0; wavelength is in meters
# @return [Float]
#   return value >= 0; return value is in meters per second
# @example
#    wave_speed(3250, 0.1) #=> 325.0
def wave_speed(frequency, wavelength)
  return frequency * wavelength.to_f
end

# Calculates the wavelength given wave speed and frequency.
# @param wave_speed [Int, Float]
#   wave_speed >= 0; wave_speed is in meters per second
# @param frequency [Int, Float]
#   frequency > 0; frequency is in hertz
# @return [Float]
#   return value is in meters
# @example
#   wavelength(325, 3250) #=> 0.1
def wavelength(wave_speed, frequency)
  return wave_speed / frequency.to_f
end

# Calculates the frequency given wave speed and wavelength.
# @param wave_speed [Int, Float]
#   wave_speed >= 0; wave_speed is in meters per second
# @param wavelength [Int, Float]
#   wavelength > 0; wavelength is in meters
# @return [Float]
#   return value is in hertz
# @example
#   frequency_v1(325, 0.1) #=> 3250.0
# @note There is one other method for calculating frequency.
def frequency_v1(wave_speed, wavelength)
  return wave_speed / wavelength.to_f
end

# Calculates the frequency given time period.
# @param time_period [Int, Float]
#   time_period > 0; time_period is in seconds
# @return [Float]
#   return value > 0; return value is in hertz
# @example
#   frequency_v2(12.5) #=> 0.08
# @note There is one other method for calculating frequency.
def frequency_v2(time_period)
  return 1.0 / time_period
end

# Calculates the time period given frequency.
# @param frequency [Int, Float]
#   frequency > 0; frequency is in hertz
# @return [Float]
#   return value > 0; return value is in hertz
# @example
#   time_period(0.08) #=> 12.5
def time_period(frequency)
  return 1.0 / frequency
end

# Calculates the refractive index of a substance given angle of incidence.
#   and angle of refraction.
# @param angle_of_incidence [Int, Float]
#   angle_of_incidence is in degrees
# @param angle_of_refraction [Int, Float]
#   angle_of_refraction is in degrees
# @return [Float]
# @example
#   refractive_index_v1(50, 35) #=> 1.3355577296591308
# @note There is one other method for calculating refractive index.
def refractive_index_v1(angle_of_incidence, angle_of_refraction)
  return Math.sin(to_radians(angle_of_incidence)) /
         Math.sin(to_radians(angle_of_refraction))
end

# Calculates the refractive index of a substance given critical angle.
# @param critical_angle [Int, Float]
#   critical_angle != 0; critical_angle is in degrees
# @return [Float]
# @example
#   refractive_index_v2(48.7535) #=> 1.3299993207924483
# @note There is one other method for calculating refractive index.
def refractive_index_v2(critical_angle)
  return 1.0 / Math.sin(to_radians(critical_angle))
end
