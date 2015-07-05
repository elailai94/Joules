#==============================================================================
# Joules
#
# @description: Module for providing thermodynamics formulas
# @author: Elisha Lai
# @version: 0.4.4 05/07/2015
#==============================================================================

# Thermodynamics module (thermodynamics.rb)

module Joules
  module_function

  # @!group Thermodynamics Methods

  # Calculates the energy given mass, specific heat capacity, and temperature change.
  # @param mass [Int, Float]
  #   mass >= 0; mass is in kilograms
  # @param specific_heat_capacity [Int, Float]
  #   specific_heat_capacity >= 0; specific_heat_capacity is in joules per kilogram celcius
  # @param temperature_change [Int, Float]
  #   temperature_change is in celcius
  # @return [Float]
  #   return value is in joules
  # @example
  #   Joules.energy_v1(500, 2.46, 3.6) #=> 4428.0
  # @note There are two other methods for calculating energy.
  def energy_v1(mass, specific_heat_capacity, temperature_change)
    return mass * specific_heat_capacity * temperature_change.to_f
  end

  # Calculates the energy given mass and specific latent heat.
  # @param mass [Int, Float]
  #   mass >= 0; mass is in kilograms
  # @param specific_latent_heat [Int, Float]
  #   specific_latent_heat >= 0; specific_latent_heat is in joules per kilogram
  # @return [Float]
  #   return value is in joules
  # @example
  #   Joules.energy_v2(84.3, 72.1) #=> 6078.03
  # @note There are two other methods for calculating energy.
  def energy_v2(mass, specific_latent_heat)
    return mass * specific_latent_heat.to_f
  end

  # @!endgroup

end
