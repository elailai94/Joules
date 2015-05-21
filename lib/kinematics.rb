#==============================================================================
# Joules
#
# @description: Module for providing kinematics equations
# @author: Elisha Lai
# @version: 0.0.1 16/05/2015
#==============================================================================

# Kinematics module (kinematics.rb)

# avg_speed: (union Int Float) (union Int Float) -> Float
# Conditions:
#     PRE: distance >= 0
#          distance is in meters.
#          time > 0
#          time is in seconds.
#     POST: Returns a Float.
#           returned value >= 0
#           returned value is in meters per second.
# Purpose: Consumes two numbers, distance and time. Returns the
# calculated average speed.
def avg_speed(distance, time)
  return distance / time.to_f 
end

# avg_velocity: (union Int Float) (union Int Float) -> Float
# Conditions:
#     PRE: displacement is in meters.
#          time > 0
#          time is in seconds.
#     POST: Returns a Float.
#           returned value is in meters per second.
# Purpose: Consumes two numbers, displacement and time. Returns the
# calculated average velocity.
def avg_velocity(displacement, time)
  return displacement / time.to_f
end

# acceleration: (union Int Float) (union Int Float) (union Int Float)
#   -> Float
# Conditions:
#     PRE: initial_velocity and final_velocity are in meters per second.
#          time > 0
#          time is in seconds.
#     POST: Returns a Float.
#           returned value is in meters per second squared.
# Purpose: Consumes three numbers: initial_velocity, final_velocity,
# and time. Returns the calculated acceleration.
def acceleration(initial_velocity, final_velocity, time)
  return (final_velocity - initial_velocity) / time.to_f
end

# final_velocity: (union Int Float) (union Int Float) (union Int Float)
#   -> Float
# Conditions: 
#     PRE: initial_velocity is in meters per second.
#          acceleration is in meters per second squared.
#          time >= 0
#          time is in seconds.
#     POST: Returns a Float.
#           returned value is in meters per second.
# Purpose: Consumes three numbers: initial_velocity, acceleration, and
# time. Returns the calculated final velocity.
def final_velocity_v1(initial_velocity, acceleration, time)
  return initial_velocity + (acceleration * time.to_f)
end

# final_velocity_v2: (union Int Float) (union Int Float) (union Int Float)
#   -> Float
# Conditions:
#     PRE: initial_velocity is in meters per second.
#          acceleration is in meters per second squared.
#          displacement is in meters.
#     POST: Returns a Float.
#           returned value is in meters per second.
# Purpose: Consumes three numbers: initial_velocity, acceleration, and
# displacement. Returns the calculated final velocity.
def final_velocity_v2(initial_velocity, acceleration, displacement)
  return ((initial_velocity ** 2) + (2 * acceleration * displacement)) ** 0.5

# displacement_v1: (union Int Float) (union Int Float) (union Int Float)
#   -> Float
# Conditions:
#     PRE: initial_velocity and final_velocity are in meters per second.
#          time >= 0
#          time is in seconds.
#     POST: Returns a Float.
#           returned value is in meters.
# Purpose: Consumes three numbers: initial_velocity, final_velocity, and
# time. Returns the calculated displacement.
def displacement_v1(initial_velocity, final_velocity, time)
  return 0.5 * (initial_velocity + final_velocity) * time
end

# displacement_v2: (union Int Float) (union Int Float) (union Int Float)
#   -> Float
# Conditions:
#     PRE: initial_velocity is in meters per second.
#          acceleration is in meters per second squared.
#          time >= 0
#          time is in seconds.
#     POST: Returns a Float.
#           returned value is in meters.
# Purpose: Consumes three numbers: initial_velocity, acceleration, and
# time. Returns the calculated displacement.
def displacement_v2(initial_velocity, acceleration, time)
  return (initial_velocity * time) + (0.5 * acceleration * (time ** 2))
end

# displacement_v3: (union Int Float) (union Int Float) (union Int Float)
#   -> Float
# Conditions:
#     PRE: final_velocity is in meters per second.
#          acceleration is in meters per second squared.
#          time >= 0
#          time is in seconds.
#     POST: Returns a Float.
#           returned value is in meters.
# Purpose: Consumes three numbers: final_velocity, acceleration, and
# time. Returns the calculated displacement.
def displacement_v3(final_velocity, acceleration, time)
  return (final_velocity * time) - (0.5 * acceleration * (time ** 2))
end
