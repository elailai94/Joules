#==============================================================================
# Joules
#
# @description: Module for providing waves formulas
# @author: Elisha Lai
# @version: 0.1.0 23/05/2015
#==============================================================================

# Waves module (waves.rb)

# Calculates the wave speed given frequency and wavelength.
# @param frequency [Int, Float]
#   frequency > 0; frequency is in hertz
# @param wavelength [Int, Float]
#   wavelength >= 0; wavelength is in meters
# @return [Float]
#   returned value >= 0; returned value is in meters per second
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
#   returned value is in meters
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
#   returned value is in hertz
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
#   returned value > 0; returned value is in hertz
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
#   returned value > 0; returned value is in hertz
# @example
#   time_period(0.08) #=> 12.5
def time_period(frequency)
  return 1.0 / frequency
end
