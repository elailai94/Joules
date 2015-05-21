#==============================================================================
# Joules
#
# @description: Module for providing forces formulas
# @author: Elisha Lai
# @version: 0.0.1 16/05/2015
#==============================================================================

# Forces module (forces.rb)

# force_v1: (union Int Float) (union Int Float) -> Float
# Conditions:
#     PRE: mass >= 0
#          mass is in kilograms.
#          acceleration is in meters per second squared.
#     POST: Returns a Float.
#           returned value is in newtons.
# Purpose: Consumes two numbers, mass and acceleration. Returns the
# calculated force.
def force_v1(mass, acceleration)
  return mass * acceleration.to_f
end

# force_v2: (union Int Float) (union Int Float) -> Float
# Conditions:
#     PRE: spring_constant >= 0
#          spring constant is in newtons per meter.
#          extension >= 0
#          extension is in meters. 
#     POST: Returns a Float.
#           returned value >= 0
#           returned value is in newtons.
# Purpose: Consumes two numbers, spring_constant and extension. Returns the
# calculated force.
def force_v2(spring_constant, extension)
  return spring_constant * extension.to_f
end

# force_v3: (union Int Float) (union Int Float) -> Float
# Conditions:
#     PRE: initial_velocity and final_velocity are in meters per second.
#          mass >= 0
#          mass is in kilograms.
#          time > 0
#          time is in seconds.
#     POST: Returns a Float.
#           returned value is in newtons.
# Purpose: Consumes four numbers, initial_velocity, final_velocity, mass,
# and time. Returns the calculated force.
def force_v3(initial_velocity, final_velocity, mass, time)
  return ((final_velocity - initial_velocity) * mass) / time.to_f
end

# moment: (union Int Float) (union Int Float) -> Float
# Conditions:
#     PRE: force is in newtons.
#          distance >= 0
#          distance is in meters.
#     POST: Returns a Float.
#           returned value is in newton metres.
# Purpose: Consumes two numbers, force and distance. Returns the
# calculated moment.
def moment(force, distance)
  return force * distance.to_f
end
