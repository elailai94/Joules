#==============================================================================
# Joules
#
# @description: Module for providing momentum and impulse formulas
# @author: Elisha Lai
# @version: 0.4.4 05/07/2015
#==============================================================================

# Momentum and impulse module (momentum_impulse.rb)

module Joules
  module_function

  # @!group Momentum and Impulse Methods

  # Calculates the momentum given mass and velocity.
  # @param mass [Int, Float]
  #   mass >= 0; mass is in kilograms
  # @param velocity [Int, Float]
  #   velocity is in metres per second
  # @return [Float]
  #   return value is in newton seconds
  # @example
  #   Joules.momentum(52, 4.7) #=> 244.4
  def momentum(mass, velocity)
    return mass * velocity.to_f
  end

  # Calculates the impulse given force and time.
  # @param force [Int, Float]
  #   force is in newtons
  # @param time [Int, Float]
  #   time >= 0; time is in seconds
  # @return [Float]
  #   return value is in newton seconds
  # @example
  #   Joules.impulse_v1(30.8, 9.6) #=> 295.68
  # @note There is one other method for calculating impulse.
  def impulse_v1(force, time)
    return force * time.to_f
  end

  # Calculates the impulse given initial velocity, final velocity, and mass.
  # @param initial_velocity [Int, Float]
  #   initial_velocity is in metres per second
  # @param final_velocity [Int, Float]
  #   final_velocity is in metres per second
  # @param mass [Int, Float]
  #   mass >= 0; mass is in kilograms
  # @return [Float]
  #   return value is in newton seconds
  # @example
  #   Joules.impulse_v2(20, 35, 2.4) #=> 36.0
  # @note There is one other method for calculating impulse.
  def impulse_v2(initial_velocity, final_velocity, mass)
    return (final_velocity - initial_velocity) * mass.to_f
  end

  # @!endgroup

end
