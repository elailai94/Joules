#==============================================================================
# Joules
#
# @description: Module for providing geometry formulas
# @author: Elisha Lai
# @version: 0.2.0 25/05/2015
#==============================================================================

# Geometry module (geometry.rb)

# Calculates the arc length of a circle given radius and central angle.
# @param radius [Int, Float]
#   radius >= 0; radius is in a unit of length
# @param central_angle [Int, Float]
#   central_angle >= 0; central_angle is in radians
# @return [Float]
#   return value >= 0; return value has the same units as radius
# @example
#   arc_length(12, (Math::PI/4)) #=> 9.42477796076938
def arc_length(radius, central_angle)
  return radius * central_angle.to_f
end

# Calculates the circumference of a circle given radius.
# @param radius [Int, Float]
#   radius >= 0; radius is in a unit of length
# @return [Float]
#   return value >= 0; return value has the same units as radius
# @example
#   circumference(12) #=> 75.398223686155 
def circumference(radius)
  return 2 * Math::PI * radius
end

# Calculates the area of a circle given radius.
# @param radius [Int, Float]
#   radius >= 0; radius is in a unit of length
# @return [Float]
#   return value >= 0; return value has the same units as radius
# @example
#   circle_area(12) #=> 452.38934211693 
def circle_area(radius)
  return Math::PI * (radius ** 2)
end

# Calculates the surface area of a sphere given radius.
# @param radius [Int, Float]
#   radius >= 0; radius is in a unit of length
# @return [Float]
#   return value >= 0; return value has the same units as radius
# @example
#   sphere_surface_area(12) #=> 1809.55736846772
def sphere_surface_area(radius)
  return 4 * Math::PI * (radius ** 2)
end

# Calculates the volume of a sphere given radius.
# @param radius [Int, Float]
#   radius >= 0; radius is in a unit of length
# @return [Float]
#   return value >= 0; return value has the same units as radius
# @example
#   sphere_volume(12) #=> 7238.22947387088
def sphere_volume(radius)
  return (4 * Math::PI * (radius ** 3)) / 3
end

# Calulates the surface area of a cylinder given radius and height.
# @param radius [Int, Float]
#   radius >= 0; radius is in a unit of length
# @param height [Int, Float]
#   height >= 0; height has the same units as radius
# @return [Float]
#   return value >= 0; return value has the same units as radius
# @example
#   cylinder_surface_area(6.5, 3) #=> 122.522113490002
def cylinder_surface_area(radius, height)
  return 2 * Math::PI * radius * height
end

# Calculates the volume of a cylinder given radius and height.
# @param radius [Int, Float]
#   radius >= 0; radius is in a unit of length
# @param height [Int, Float]
#   height >= 0; height has the same units as radius
# @return [Float]
#   return value >= 0; return value has the same units as radius
# @example
#   cylinder_volume(6.5, 3) #=> 398.196868842506 
def cylinder_volume(radius, height)
  return Math::PI * (radius ** 2) * height
end
