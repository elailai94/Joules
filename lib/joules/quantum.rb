#==============================================================================
# Joules
#
# @description: Module for providing quantum formulas
# @author: Elisha Lai
# @version: 0.3.1 01/06/2015
#==============================================================================

# Quantum module (quantum.rb)

require_relative 'constants'

module Joules
  module_function

  # Calculates the photon energy given frequency.
  # @param frequency [Int, Float]
  #   frequency > 0; frequency is in hertz
  # @return [Float]
  #   return value > 0; return value is in joules
  # @example
  #   photon_energy(509337860780984.75) #=> 3.376910016977929e-19
  def photon_energy(frequency)
    return PLANCK_CONSTANT * frequency
  end

  # Calculates the energy given mass.
  # @param mass [Int, Float]
  #   mass >= 0; mass is in kilograms
  # @return [Float]
  #   return value >= 0; return value is in joules
  # @example
  #   energy_v4(60.5) #=> 5.445e+18
  # @note There are three other methods for calculating energy.
  def energy_v4(mass)
    return mass * (SPEED_OF_LIGHT ** 2)
  end

  # Calculates the half-life of a decaying quantity given decay constant.
  # @param decay_constant [Int, Float]
  #   decay_constant != 0; decay_constant is in per second
  # @return [Float]
  #   return value is in seconds
  # @example
  #   half_life(7.7e4) #=> 9.001911435843445e-06
  def half_life(decay_constant)
    return Math.log(2) / decay_constant
  end

  # Calculates the decay constant of a decaying quantity given half-life.
  # @param half_life [Int, Float]
  #   half_life != 0; half_life is in seconds
  # @return [Float]
  #   return value is in per second
  # @example
  #   decay_constant(9) #=> 0.0770163533955495
  def decay_constant(half_life)
    return Math.log(2) / half_life
  end

end
