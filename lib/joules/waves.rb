#==============================================================================
# Joules
#
# @description: Module for providing waves formulas
# @author: Elisha Lai
# @version: 0.4.1 07/06/2015
#==============================================================================

# Waves module (waves.rb)

module Joules
  module_function

  # Calculates the wave speed given frequency and wavelength.
  # @param frequency [Int, Float]
  #   frequency > 0; frequency is in hertz
  # @param wavelength [Int, Float]
  #   wavelength >= 0; wavelength is in metres
  # @return [Float]
  #   return value >= 0; return value is in metres per second
  # @example
  #   Joules.wave_speed(3250, 0.1) #=> 325.0
  def wave_speed(frequency, wavelength)
    return frequency * wavelength.to_f
  end

  # Calculates the wavelength given wave speed and frequency.
  # @param wave_speed [Int, Float]
  #   wave_speed >= 0; wave_speed is in metres per second
  # @param frequency [Int, Float]
  #   frequency > 0; frequency is in hertz
  # @return [Float]
  #   return value is in metres
  # @raise [ZeroDivisionError] if frequency = 0
  # @example
  #   Joules.wavelength(325, 3250) #=> 0.1
  def wavelength(wave_speed, frequency)
    if frequency.zero?
      raise ZeroDivisionError.new('divided by 0')
    else
      return wave_speed / frequency.to_f
    end
  end

  # Calculates the frequency given wave speed and wavelength.
  # @param wave_speed [Int, Float]
  #   wave_speed >= 0; wave_speed is in metres per second
  # @param wavelength [Int, Float]
  #   wavelength > 0; wavelength is in metres
  # @return [Float]
  #   return value is in hertz
  # @raise [ZeroDivisionError] if wavelength = 0
  # @example
  #   Joules.frequency_v1(325, 0.1) #=> 3250.0
  # @note There is one other method for calculating frequency.
  def frequency_v1(wave_speed, wavelength)
    if wavelength.zero?
      raise ZeroDivisionError.new('divided by 0')
    else
      return wave_speed / wavelength.to_f
    end
  end

  # Calculates the frequency given time period.
  # @param time_period [Int, Float]
  #   time_period > 0; time_period is in seconds
  # @return [Float]
  #   return value > 0; return value is in hertz
  # @raise [ZeroDivisionError] if time_period = 0
  # @example
  #   Joules.frequency_v2(12.5) #=> 0.08
  # @note There is one other method for calculating frequency.
  def frequency_v2(time_period)
    if time_period.zero?
      raise ZeroDivisionError.new('divided by 0')
    else
      return 1.0 / time_period
    end
  end

  # Calculates the time period given frequency.
  # @param frequency [Int, Float]
  #   frequency > 0; frequency is in hertz
  # @return [Float]
  #   return value > 0; return value is in seconds
  # @raise [ZeroDivisionError] if frequency = 0
  # @example
  #   Joules.time_period_v1(0.08) #=> 12.5
  # @note There are two other methods for calculating time period.
  def time_period_v1(frequency)
    if frequency.zero?
      raise ZeroDivisionError.new('divided by 0')
    else
      return 1.0 / frequency
    end
  end

  # Calculates the refractive index of a substance given angle of incidence and angle of refraction.
  # @param angle_of_incidence [Int, Float]
  #   angle_of_incidence is in degrees
  # @param angle_of_refraction [Int, Float]
  #   angle_of_refraction != 0; angle_of_refraction is in degrees
  # @return [Float]
  # @raise [ZeroDivisionError] if angle_of_refraction = 0
  # @example
  #   Joules.refractive_index_v1(50, 35) #=> 1.3355577296591308
  # @note There is one other method for calculating refractive index.
  def refractive_index_v1(angle_of_incidence, angle_of_refraction)
    if angle_of_refraction.zero?
      raise ZeroDivisionError.new('divided by 0')
    else
      return Math.sin(to_radians(angle_of_incidence)) /
             Math.sin(to_radians(angle_of_refraction))
    end
  end

  # Calculates the refractive index of a substance given critical angle.
  # @param critical_angle [Int, Float]
  #   critical_angle != 0; critical_angle is in degrees
  # @return [Float]
  # @raise [ZeroDivisionError] if critical_angle = 0
  # @example
  #   Joules.refractive_index_v2(48.7535) #=> 1.3299993207924483
  # @note There is one other method for calculating refractive index.
  def refractive_index_v2(critical_angle)
    if critical_angle.zero?
      raise ZeroDivisionError.new('divided by 0')
    else
      return 1.0 / Math.sin(to_radians(critical_angle))
    end
  end

  # Calculates the magnification given image height and object height.
  # @param image_height [Int, Float]
  #   image_height >= 0; image_height is in a unit of length
  # @param object_height [Int, Float]
  #   object_height > 0; object_height has the same units as image_height
  # @return [Float]
  #   return value >= 0
  # @raise [ZeroDivisionError] if object_height = 0
  # @example
  #   Joules.magnification(10, 5) #=> 2.0 
  def magnification(image_height, object_height)
    if object_height.zero?
      raise ZeroDivisionError.new('divided by 0')
    else
      return image_height / object_height.to_f
    end
  end

  # Calculates the focal length of a lens given object distance and image distance.
  # @param object_distance [Int, Float]
  #   object_distance > 0; object_distance is in metres
  # @param image_distance [Int, Float]
  #   image_distance > 0; image_distance is in metres
  # @return [Float]
  #   return value >= 0; return value is in metres
  # @raise [ZeroDivisionError] if object_distance = 0 or image_distance = 0
  # @example
  #   Joules.focal_length(45.7, 22.8) #=> 15.21109489051095
  def focal_length(object_distance, image_distance)
    if object_distance.zero? || image_distance.zero?
      raise ZeroDivisionError.new('divided by 0')
    else
      return 1 / ((1.0 / object_distance) + (1.0 / image_distance))
    end
  end

  # Calculates the power of a lens given focal length.
  # @param focal_length [Int, Float]
  #   focal_length > 0; focal_length is in metres
  # @return [Float]
  #   return value > 0; return value is in dioptres
  # @raise [ZeroDivisionError] if focal_length = 0
  # @example
  #   Joules.power_of_lens(2) #=> 0.5
  def power_of_lens(focal_length)
    if focal_length.zero?
      raise ZeroDivisionError.new('divided by 0')
    else
      return 1.0 / focal_length
    end
  end

end
