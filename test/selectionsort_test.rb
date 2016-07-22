#!/usr/bin/ruby

require 'test/unit'
require '../lib/selectionsort'

class TestSelectionSort < Test::Unit::TestCase

	def test_swap_elements
		two_element_test = [1,0]
	
		assert_equal(two_element_test.swap_elements(0,1),[0,1])
	end


	def test_selection_sort()
		multi_element_test = [1,3,2,0]
		
		assert_equal(multi_element_test.selection_sort, [0,1,2,3])
	end
	
	def test_invalid_arguement
		invalid_argument_test = [Object.new, "string", "1"]
	
		assert_raise RuntimeError do
			invalid_argument_test.selection_sort
		end
	end	


end
