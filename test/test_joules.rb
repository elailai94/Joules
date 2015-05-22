#==============================================================================
# Joules
#
# @description: Module for testing the Joules module
# @author: Elisha Lai
# @version: 0.0.1 16/05/2015
#==============================================================================

# Testing module for joules.rb (test_joules.rb)

require 'test/unit'
require 'joules'

# nums_equal: (union Int Float) (union Int Float) -> Bool
# Conditions:
#     PRE: True
#     POST: Returns a Bool.
# Purpose: Consumes two numbers, a and b. Returns true if they have an
# absolute difference of less than or equal to 0.00001.
def nums_equal(a, b)
  diff = (b - a).abs
  return diff <= 0.00001
end

# Unit tests for kinematics module
class KinematicsTests < Test::Unit::TestCase
  def test_avg_speed_extreme_1
    assert(nums_equal(0, avg_speed(0,0.001)))
  end

  def test_avg_speed_extreme_2
    assert(nums_equal(1.03010, avg_speed(928476103, 901348726)))
  end

  def test_avg_speed_big_divisor
    assert(nums_equal(6.32386e-09, avg_speed(5.7, 901348726)))
  end
end
