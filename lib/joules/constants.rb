#==============================================================================
# Joules
#
# @description: Module for providing constants
# @author: Elisha Lai
# @version: 0.4.0 06/06/2015
#==============================================================================

# Constants module (constants.rb)

module Joules
  
  # Speed of light in free space.
  # @note This quantity is in metres per second.
  SPEED_OF_LIGHT = 3.00e8

  # Permeability of free space.
  # @note This quantity is in henries per metre.
  FREE_SPACE_PERMEABILITY = (4 * Math::PI * 1e-7)

  # Permittivity of free space.
  # @note This quantity is in farads per metre.
  FREE_SPACE_PERMITTIVITY = 8.85e-12

  # Elementary charge.
  # @note This quantity is in coulombs.
  ELEMENTARY_CHARGE = 1.6e-19

  # Planck constant.
  # @note This quantity is in joule seconds.
  PLANCK_CONSTANT = 6.63e-34

  # Unified atomic mass unit.
  # @note This quantiy is in kilograms.
  UNIFIED_ATOMIC_MASS_UNIT = 1.66e-27

  # Rest mass of electron.
  # @note This quantity is in kilograms.
  ELECTRON_MASS = 9.11e-31

  # Rest mass of proton.
  # @note This quantity is in kilograms.
  PROTON_MASS = 1.67e-27

  # Rest mass of neutron.
  # @note This quantity is in kilograms.
  NEUTRON_MASS = 1.67e-27

  # Molar gas constant.
  # @note This quantity is in joules per kelvin mole.
  MOLAR_GAS_CONSTANT = 8.31

  # Avogadro constant.
  # @note This quantity is in per mole. 
  AVOGADRO_CONSTANT = 6.02e23

  # Boltzmann constant.
  # @note This quantity is in joules per kelvin.
  BOLTZMANN_CONSTANT = 1.38e-23

  # Stefan constant.
  # @note This quantity is in watts per metre squared kelvin to the fourth power.
  STEFAN_CONSTANT = 5.67e-8

  # Wien constant.
  # @note This quantity is in metre kelvins.
  WIEN_CONSTANT = 2.9e-3

  # Gravitational constant.
  # @note This quantity is in newton metres squared per kilogram squared.
  GRAVITATIONAL_CONSTANT = 6.67e-11

  # Acceleration of free fall.
  # @note This quantity is in metres per second squared.
  FREE_FALL_ACCELERATION = 9.81

end
