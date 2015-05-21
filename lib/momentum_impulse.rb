#==============================================================================
# Joules
#
# @description: Module for providing momentum and impulse formulas
# @author: Elisha Lai
# @version: 0.0.1 16/05/2015
#==============================================================================

# Momentum and impulse module (momentum_impulse.rb)

# momentum: (union Int Float) (union Int Float) -> Float
# Conditions:
#     PRE: mass >= 0
#          mass is in kilograms.
#          velocity is in meters per second.
#     POST: Returns a Float.
#           returned value is in newton seconds.
# Purpose: Consumes two numbers, mass and velocity. Returns the calculated
# momentum.
def momentum(mass, velocity)
  return mass * velocity.to_f
end

# impulse_v1: (union Int Float) (union Int Float) -> Float
# Conditions:
#     PRE: force is in newtons.
#          time >= 0
#          time is in seconds.
#     POST: Returns a Float.
#           returned value is in newton seconds.
# Purpose: Consumes two numbers, force and time. Returns the calculated
# impulse.
def impulse_v1(force, time)
  return force * time.to_f
end

# impulse_v2: (union Int Float) (union Int Float) (union Int Float)
# -> Float
# Condition:
#     PRE: initial_velocity and final_velocity are in meters per second.
#          mass >= 0
#          mass is in kilograms.
#     POST: Returns a Float.
#           returned value is in newton seconds.
# Purpose: Consumes three numbers, initial_velocity, final_velocity, and
# mass. Returns the calculated impulse.
def impulse_v2(initial_velocity, final_velocity, mass)
  return (final_velocity - initial_velocity) * mass.to_f
end
