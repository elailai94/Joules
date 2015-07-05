#==============================================================================
# Joules
#
# @description: Module for testing the Joules module
# @author: Elisha Lai
# @version: 0.4.4 05/07/2015
#==============================================================================

# Testing module for joules.rb (test_joules.rb)

require 'test/unit'
require 'joules'
include Joules

EPSILON = 0.00001

# Unit tests for circular motion module
class CircularMotionTests < Test::Unit::TestCase
  def test_angular_velocity_v1_extreme_1
    assert_in_epsilon(0, angular_velocity_v1(0,0.001), EPSILON)
  end

  def test_angular_velocity_v1_extreme_2
    assert_in_epsilon(1.03010, angular_velocity_v1(928476103, 901348726), EPSILON)
  end

  def test_angular_velocity_v1_big_divisor
    assert_in_epsilon(6.32386e-09, angular_velocity_v1(5.7, 901348726), EPSILON)
  end

  def test_angular_velocity_v1_zero_division
    assert_raise(ZeroDivisionError) do
      angular_velocity_v1(1, 0)
    end
  end

  def test_angular_velocity_v1_example
    assert_in_epsilon(3, angular_velocity_v1(9, 3), EPSILON)
  end
end

# Unit tests for kinematics module
class KinematicsTests < Test::Unit::TestCase
  def test_avg_speed_extreme_1
    assert_in_epsilon(0, avg_speed(0,0.001), EPSILON)
  end

  def test_avg_speed_extreme_2
    assert_in_epsilon(1.03010, avg_speed(928476103, 901348726), EPSILON)
  end

  def test_avg_speed_big_divisor
    assert_in_epsilon(6.32386e-09, avg_speed(5.7, 901348726), EPSILON)
  end

  def test_avg_speed_zero_division
    assert_raise(ZeroDivisionError) do
      avg_speed(1, 0)
    end
  end
end
