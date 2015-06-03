#==============================================================================
# Joules
#
# @description: Module for providing electricity formulas
# @author: Elisha Lai
# @version: 0.3.2 03/06/2015
#==============================================================================

# Electricity module (electricity.rb)

module Joules
  module_function

  # Calculates the current given charge and time.
  # @param charge [Int, Float]
  #   charge is in coulombs
  # @param time [Int, Float]
  #   time > 0; time is in seconds
  # @return [Float]
  #   return value is in amperes
  # @raise [ZeroDivisionError] if time = 0
  # @example
  #   Joules.current(325, 5) #=> 65.0
  def current(charge, time)
    if time.zero?
      raise ZeroDivisionError.new('divided by 0')
    else
      return charge / time.to_f
    end
  end

  # Calculates the resistance given voltage and current.
  # @param voltage [Int, Float]
  #   voltage is in volts
  # @param current [Int, Float]
  #   current != 0; current is in amperes
  # @return [Float]
  #   return value is in ohms
  # @raise [ZeroDivisionError] if current = 0
  # @example
  #   Joules.resistance_v1(1.8, 0.6) #=> 3.0
  # @note There is one other method for calculating resistance.
  def resistance_v1(voltage, current)
    if current.zero?
      raise ZeroDivisionError.new('divided by 0')
    else
      return voltage / current.to_f
    end
  end

  # Calculates the resistance given resistivity, wire length, and cross sectional area.
  # @param resistivity [Int, Float]
  #   resistivity >= 0; resistivity is in ohm metres
  # @param wire_length [Int, Float]
  #   wire_length >= 0; wire_length is in metres
  # @param cross_sectional_area [Int, Float]
  #   cross_sectional_area > 0; cross_sectional_area is in metres squared
  # @return [Float]
  #   return value >= 0; return value is in ohms
  # @raise [ZeroDivisionError] if cross_sectional_area = 0
  # @example
  #   Joules.resistance_v2(1e13, 250, 0.4) #=> 6.25e+15
  # @note There is one other method for calculating resistance.
  def resistance_v2(resistivity, wire_length, cross_sectional_area)
    if cross_sectional_area.zero?
      raise ZeroDivisionError.new('divided by 0')
    else
      return (resistivity * wire_length) / cross_sectional_area.to_f
    end
  end

  # Calculates the total resistance of resistors in series.
  # @param resistances [Array<Int, Float>]
  #   each resistance in resistances is in ohms
  # @return [Float]
  #   return value is in ohms
  # @example
  #   Joules.resistance_in_series([10, 5, 3.4, 6.3]) #=> 24.7
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
  #   Joules.resistance_in_parallel([0.5, 0.25, 0.125]) #=> 0.07142857142857142
  def resistance_in_parallel(resistances)
    total_resistance = 0
    if resistances.empty?
      return total_resistance.to_f 
    else
      resistances.each do |resistance|
        total_resistance += (1.0 / resistance)
      end
      return 1 / total_resistance
    end
  end

  # Calculates the total capacitance given charge and voltage.
  # @param charge [Int, Float]
  #   charge is in coulombs
  # @param voltage [Int, Float]
  #   voltage != 0; voltage is in volts
  # @return [Float]
  #   return value is in farads
  # @raise [ZeroDivisionError] if voltage = 0
  # @example
  #   Joules.capacitance(2e-3, 100) #=> 2.0e-05
  def capacitance(charge, voltage)
    if voltage.zero?
      raise ZeroDivisionError.new('divided by 0')
    else
      return charge / voltage.to_f
    end
  end

  # Calculates the capacitor potential energy given charge and voltage.
  # @param charge [Int, Float]
  #   charge is in coulombs
  # @param voltage [Int, Float]
  #   voltage is in volts
  # @return [Float]
  #   return value is in joules
  # @example
  #   Joules.capacitor_potential_energy_v1(1.5, 30) #=> 22.5
  # @note There are two other methods for calculating capacitor potential energy.
  def capacitor_potential_energy_v1(charge, voltage)
    return 0.5 * charge * voltage
  end

  # Calculates the capacitor potential energy given capacitance and voltage.
  # @param capacitance [Int, Float]
  #   capacitance is in farads
  # @param voltage [Int, Float]
  #   voltage is in volts
  # @return [Float]
  #   return value is in joules
  # @example
  #   Joules.capacitor_potential_energy_v2(10e-6, 20) #=> 0.002
  # @note There are two other methods for calculating capacitor potential energy.
  def capacitor_potential_energy_v2(capacitance, voltage)
    return 0.5 * capacitance * (voltage ** 2)
  end

  # Calculates the capacitor potential energy given charge and capacitance.
  # @param charge [Int, Float]
  #   charge is in coulombs
  # @param capacitance [Int, Float]
  #   capacitance != 0; capacitance is in farads
  # @return [Float]
  #   return value is in joules
  # @raise [ZeroDivisionError] if capacitance = 0
  # @example
  #   Joules.capacitor_potential_energy_v3(25, 50) #=> 6.25
  # @note There are two other methods for calculating capacitor potential energy.
  def capacitor_potential_energy_v3(charge, capacitance)
    if capacitance.zero?
      raise ZeroDivisionError.new('divided by 0')
    else
      return (0.5 * (charge ** 2)) / capacitance
    end
  end

  # Calculates the total capacitance of capacitors in series.
  # @param capacitances [Array<Int, Float>]
  #   each capacitance in resistances != 0; each capacitance in capacitances is in farads
  # @return [Float]
  #   return value is in farads
  # @example
  #   Joules.capacitance_in_series([0.5, 0.25, 0.125]) #=> 0.07142857142857142
  def capacitance_in_series(capacitances)
    total_capacitance = 0
    if capacitances.empty?
      return total_capacitance.to_f
    else
      capacitances.each do |capacitance|
        total_capacitance += (1.0 / capacitance)
      end
      return 1 / total_capacitance
    end
  end

  # Calculates the total capacitance of capacitors in parallel.
  # @param capacitances [Array<Int, Float>]
  #   each capacitance in capacitances is in farads
  # @return [Float]
  #   return value is in farads
  # @example
  #   Joules.capacitance_in_parallel([10, 5, 3.4, 6.3]) #=> 24.7
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
  # @raise [ZeroDivisionError] if charge = 0
  # @example
  #   Joules.voltage_v1(1.8, 0.6) #=> 3.0
  # @note There is one other method for calculating voltage.
  def voltage_v1(energy, charge)
    if charge.zero?
      raise ZeroDivisionError.new('divided by 0')
    else
      return energy / charge.to_f
    end
  end

  # Calculates the voltage given current and resistance.
  # @param current [Int, Float]
  #   current is in amperes
  # @param resistance [Int, Float]
  #   resistance is in ohms
  # @return [Float]
  #   return value is in volts
  # @example
  #   Joules.voltage_v2(0.6, 3) #=> 1.8
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
  #   Joules.power_v3(1.8, 0.6) #=> 1.08
  # @note There are four other methods for calculating power.
  def power_v3(voltage, current)
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
  #   Joules.power_v4(0.6, 3) #=> 1.08
  # @note There are four other methods for calculating power.
  def power_v4(current, resistance)
    return (current ** 2.0) * resistance
  end

  # Calculates the power given voltage and resistance.
  # @param voltage [Int, Float]
  #   voltage is in volts
  # @param resistance [Int, Float]
  #   resistance != 0; resistance is in ohms
  # @return [Float]
  #   return value is in watts
  # @raise [ZeroDivisionError] if resistance = 0
  # @example
  #   Joules.power_v5(1.8, 3) #=> 1.08
  # @note There are four other methods for calculating power.
  def power_v5(voltage, resistance)
    if resistance.zero?
      raise ZeroDivisionError.new('divided by 0')
    else
      return (voltage ** 2.0) / resistance
    end
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
  #   Joules.energy_v3(1.8, 0.6, 5) #=> 5.4
  # @note There are two other methods for calculating energy.
  def energy_v3(voltage, current, time)
    return power_v2(voltage, current) * time
  end

end
