#!/usr/bin/ruby

require 'test/unit'
require '../lib/insertionsort'

class TestInsertionSort < Test::Unit::TestCase

	def test_selection_sort()
		multi_element_test = [1,3,2,0]
		
		assert_equal(multi_element_test.insertion_sort, [0,1,2,3])
	end
	
	def test_big_sort
		big_element_test = [11,9,7,8,6,3,4,5,1,2,0,10]

		assert_equal(big_element_test.insertion_sort, [*0..11])
	end

	def test_same_num
		same_num_test = [3,3,5,0,1,0,2,3,0,3,4,4]

		assert_equal(same_num_test.insertion_sort, [0,0,0,1,2,3,3,3,3,4,4,5])

	end


end
