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

# Calculates the total resistance of resistors in series.
# @param resistances [Array<Int, Float>]
#   each resistance in resistances is in ohms
# @return [Float]
#   return value is in ohms
# @example
#   resistance_in_series([10, 5, 3.4, 6.3]) #=> 24.7
def resistance_in_series(resistances)
  total_resistance = 0
  resistances.each do |resistance|
    total_resistance += resistance
  end
  return total_resistance.to_f
end

# Calculates the total resistance of resistors in parallel.
# @param resistances [Array<Int, Float>]
#   each resistance in resistances != 0; each resistance in resistances is in ohms
# @return [Float]
#   return value is in ohms
# @example
#   resistance_in_parallel([0.5, 0.25, 0.125]) #=> 0.07142857142857142
def resistance_in_parallel(resistances)
  if resistances.empty?
    raise ArgumentError.new('empty list of resistances')
  end
  total_resistance = 0
  resistances.each do |resistance|
    total_resistance += (1.0 / resistance)
  end
  return 1 / total_resistance
end

# Calculates the total capacitance given charge and voltage.
# @param charge [Int, Float]
#   charge is in coulombs
# @param voltage [Int, Float]
#   voltage != 0; voltage is in volts
# @return [Float]
#   return value is in farads
# @example
#   capacitance(2e-3, 100) #=> 2.0e-05
def capacitance(charge, voltage)
  return charge / voltage.to_f
end

# Calculates the capacitor potential energy given charge and voltage.
# @param charge [Int, Float]
#   charge is in coulombs
# @param voltage [Int, Float]
#   voltage is in volts
# @return [Float]
#   return value is in joules
# @example
#   capacitor_potential_energy(1.5, 30) #=> 22.5
def capacitor_potential_energy(charge, voltage)
  return 0.5 * charge * voltage
end

# Calculates the total capacitance of capacitors in series.
# @param capacitances [Array<Int, Float>]
#   each capacitance in resistances != 0; each capacitance in capacitances is in farads
# @return [Float]
#   return value is in farads
# @example
#   capacitance_in_series([0.5, 0.25, 0.125]) #=> 0.07142857142857142
def capacitance_in_series(capacitances)
  if capacitances.empty?
    raise ArgumentError.new('empty list of capacitances')
  end
  total_capacitance = 0
  capacitances.each do |capacitance|
  	total_capacitance += (1.0 / capacitance)
  end
  return 1 / total_capacitance
end

# Calculates the total capacitance in parallel given capacitances.
# @param capacitances [Array<Int, Float>]
#   each capacitance in capacitances is in farads
# @return [Float]
#   return value is in farads
# @example
#   capacitance_in_parallel([10, 5, 3.4, 6.3]) #=> 24.7
def capacitance_in_parallel(capacitances)
  total_capacitance = 0
  capacitances.each do |capacitance|
  	total_capacitance += capacitance
  end
  return total_capacitance.to_f
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
#   resistance != 0; resistance is in ohms
# @return [Float]
#   return value is in watts
# @example
#   power_v4(1.8, 3) #=> 1.08
# @note There are three other methods for calculating power.
def power_v4(voltage, resistance)
  return (voltage ** 2.0) / resistance
end

# Calculates the energy given voltage, current, and time.
# @param voltage [Int, Float]
#   voltage is in volts
# @param current [Int, Float]
#   current is in amperes
# @param time [Int, Float]
#   time >= 0; time is in seconds
# @return [Float]
#   return value is in joules
# @example
#   energy_v3(1.8, 0.6, 5) #=> 5.4
# @note There are two other methods for calculating energy.
def energy_v3(voltage, current, time)
  return power_v2(voltage, current) * time
end
