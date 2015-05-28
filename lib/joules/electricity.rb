#==============================================================================
# Joules
#
# @description: Module for providing electricity formulas
# @author: Elisha Lai
# @version: 0.2.0 25/05/2015
#==============================================================================

# Electricity module (electricity.rb)

# Calculates the current given charge and time.
# @param charge [Int, Float]
#   charge is in coulombs
# @param time [Int, Float]
#   time > 0; time is in seconds
# @return [Float]
#   return value is in amperes
# @example
#   current(325, 5) #=> 65.0
def current(charge, time)
  return charge / time.to_f
end

# Calculates the resistance given voltage and current.
# @param voltage [Int, Float]
#   voltage is in volts
# @param current [Int, Float]
#   current != 0; current is in amperes
# @return [Float]
#   return value is in ohms
# @example
#   resistance(1.8, 0.6) #=> 3.0
# @note There is one other method for calculating resistance.
def resistance_v1(voltage, current)
  return voltage / current.to_f	
end

# Calculates the resistance given resistivity, wire length, and cross sectional area.
# @param resistivity [Int, Float]
#   resistivity >= 0; resistivity is in ohm metres
# @param wire_length [Int, Float]
#   wire_length >= 0; wire_length is in meters
# @param cross_sectional_area [Int, Float]
#   cross_sectional_area > 0; cross_sectional_area is in meters squared
# @return [Float]
#   return value >= 0; return value is in ohms
# @example
#   resistance_v2(1e13, 250, 0.4) #=> 6.25e+15
# @note There is one other method for calculating resistance.
def resistance_v2(resistivity, wire_length, cross_sectional_area)
  return (resistivity * wire_length) / cross_sectional_area.to_f
end

# Calculates the voltage given energy and charge.
# @param energy [Int, Float]
#   energy is in joules
# @param charge [Int, Float]
#   charge != 0; charge is in coulombs
# @return [Float]
#   return value is in volts
# @example
#   voltage_v1(1.8, 0.6) #=> 3.0
# @note There is one other method for calculating voltage.
def voltage_v1(energy, charge)
  return energy / charge.to_f
end

# Calculates the voltage given current and resistance.
# @param current [Int, Float]
#   current is in amperes
# @param resistance [Int, Float]
#   resistance is in ohms
# @return [Float]
#   return value is in volts
# @example
#   voltage_v2(0.6, 3) #=> 1.8
# @note There is one other method for calculating voltage.
def voltage_v2(current, resistance)
  return current * resistance.to_f
end

# Calculates the power given voltage and current.
# @param voltage [Int, Float]
#   voltage is in volts
# @param current [Int, Float]
#   current is in amperes
# @return [Float]
#   return value is in watts
# @example
#   power_v2(1.8, 0.6) #=> 1.08
# @note There are three other methods for calculating power.
def power_v2(voltage, current)
  return voltage * current.to_f
end

# Calculates the power given current and resistance.
# @param current [Int, Float]
#   current is in amperes
# @param resistance [Int, Float]
#   resistance is in ohms
# @return [Float]
#   return value is in watts
# @example
#   power_v3(0.6, 3) #=> 1.08
# @note There are three other methods for calculating power.
def power_v3(current, resistance)
  return (current ** 2.0) * resistance
end

# Calculates the power given voltage and resistance.
# @param voltage [Int, Float]
#   voltage is in volts
# @param resistance [Int, Float]
#   resistance is in ohms
# @return [Float]
#   return value is in watts
# @example
#   power_v4(1.8, 3) #=> 1.08
# @note There are three other methods for calculating power.
def power_v4(voltage, resistance)
  return (voltage ** 2.0) / resistance
end
