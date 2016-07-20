require "test/unit"
require "../lib/bubblesort"

class TestBubbleSort < Test::Unit::TestCase
	def test_bubble_sort()
		two_element_test = [1,0]
		
		assert_equal(two_element_test.bubble_sort, [0,1])
	end
	
	def test_invalid_object()
		invalid_bubble_sort_object = "Test"
		
		assert_raise do 
			invalid_bubble_sort_object.bubble_sort
		end
	end
	
	def test_invalid_elements()
		array_with_mixed_elements = [Object,1,"test"]
		
		assert_raise do 
			array_with_mixed_elements.bubble_sort
		end
	end
	
	def test_big_bubble_sort()
		big_array = [9,6,7,8,5,4,3,2,0,1]
		
		assert_equal(big_array.bubble_sort, [*0..9])
	end
end