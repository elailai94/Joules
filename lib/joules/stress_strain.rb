#==============================================================================
# Joules
#
# @description: Module for providing stress and strain formulas
# @author: Elisha Lai
# @version: 0.3.2 03/06/2015
#==============================================================================

# Stress and strain module (stress_strain.rb)

module Joules
  module_function

  # Calculates the tensile stress given force and area.
  # @param force [Int, Float]
  #   force >= 0; force is in newtons
  # @param area [Int, Float]
  #   area > 0; area is in metres squared
  # @return [Float]
  #   return value >= 0; return value is in pascals
  # @raise [ZeroDivisionError] if area = 0
  # @example
  #   Joules.tensile_stress(98, 0.04) #=> 2450.0
  def tensile_stress(force, area)
  	if area.zero?
      raise ZeroDivisionError.new('divided by 0')
  	else
      return force / area.to_f
    end
  end

  # Calculates the tensile strain given extension and length.
  # @param extension [Int, Float]
  #   extension >= 0; extension is in metres
  # @param length [Int, Float]
  #   length > 0; length is in metres
  # @return [Float]
  #   return value >= 0
  # @raise [ZeroDivisionError] if length = 0 
  # @example
  #   Joules.tensile_strain(2, 10) #=> 0.2
  def tensile_strain(extension, length)
  	if length.zero?
      raise ZeroDivisionError.new('divided by 0')
  	else
      return extension / length.to_f
    end
  end

  # Calculates the Young modulus given tensile stress and tensile strain.
  # @param tensile_stress [Int, Float]
  #   tensile_stress >= 0; tensile_stress is in pascals
  # @param tensile_strain [Int, Float]
  #   tensile_strain > 0
  # @return [Float]
  #   return value >= 0; return value is in pascals
  # @raise [ZeroDivisionError] if tensile_strain = 0
  # @example
  #   Joules.young_modulus(2450, 0.2) #=> 12250.0
  def young_modulus(tensile_stress, tensile_strain)
  	if tensile_strain.zero?
  	  raise ZeroDivisionError.new('divided by 0')
  	else
      return tensile_stress / tensile_strain.to_f
    end
  end
	
end
