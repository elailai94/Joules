#==============================================================================
# Joules
#
# @description: Module for providing magnetic fields formulas
# @author: Elisha Lai
# @version: 0.3.2 03/06/2015
#==============================================================================

# Magnetic fields module (magnetic_fields.rb)

module Joules
  module_function

  # Calculates the magnetic force on a current given flux density, current, and conductor length.
  # @param flux_density [Int, Float]
  #   flux_density is in teslas
  # @param current [Int, Float]
  #   current is in amperes
  # @param conductor_length [Int, Float]
  #   conductor_length >= 0; conductor_length is in metres
  # @param angle [Int, Float]
  #   angle is in degrees
  # @return [Float]
  #   return value is in newtons
  # @example
  #   Joules.magnetic_force_v1(0.06, 20, 4.5) #=> 5.3999999999999995
  # @note There is one other method for calculating magnetic force.
  def magnetic_force_v1(flux_density, current, conductor_length, angle = 90)
    return flux_density * current * conductor_length * Math.sin(to_radians(angle))
  end

  # Calculates the magnetic force on a moving charge given flux density, charge, and velocity.
  # @param flux_density [Int, Float]
  #   flux_density is in teslas
  # @param charge [Int, Float]
  #   charge is in coulombs
  # @param velocity [Int, Float]
  #   velocity is in metres per second
  # @param angle [Int, Float]
  #   angle is in degrees
  # @return [Float]
  #   return value is in newtons
  # @example
  #   Joules.magnetic_force_v2(0.06, 34, 60) #=> 122.4
  # @note There is one other method for calculating magnetic force.
  def magnetic_force_v2(flux_density, charge, velocity, angle = 90)
    return flux_density * charge * velocity * Math.sin(to_radians(angle))
  end

  # Calculates the magnetic flux given flux density and area.
  # @param flux_density [Int, Float]
  #   flux_density is in teslas
  # @param area [Int, Float]
  #   area >= 0; area is in metres squared
  # @param angle [Int, Float]
  #   angle is in degrees
  # @return [Float]
  #   return value is in webers
  # @example
  #   Joules.magnetic_flux(0.945, 9e-4) #=> 0.0008504999999999999
  def magnetic_flux(flux_density, area, angle = 0)
    return flux_density * area * Math.cos(to_radians(angle))
  end

  # Calculates the magnetic flux linkage given magnetic flux and number of coils in the wire.
  # @param magnetic_flux [Int, Float]
  #   magnetic_flux is in webers
  # @param number_of_coils [Int, Float]
  #   number_of_coils >= 0
  # @return [Float]
  #   return value is in webers
  # @example
  #   Joules.magnetic_flux_linkage(9.4, 10) #=> 94.0
  def magnetic_flux_linkage(magnetic_flux, number_of_coils)
    return magnetic_flux * number_of_coils.to_f
  end

end
