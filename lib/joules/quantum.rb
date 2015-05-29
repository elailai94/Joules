#==============================================================================
# Joules
#
# @description: Module for providing quantum formulas
# @author: Elisha Lai
# @version: 0.2.0 25/05/2015
#==============================================================================

# Quantum module (quantum.rb)

require_relative 'constants'

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
