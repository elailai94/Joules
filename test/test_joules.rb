#==============================================================================
# Joules
#
# @description: Module for testing the Joules module
# @author: Elisha Lai
# @version: 0.3.2 03/06/2015
#==============================================================================

# Testing module for joules.rb (test_joules.rb)

require 'test/unit'
require 'joules'
include Joules

EPSILON = 0.00001

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
end
