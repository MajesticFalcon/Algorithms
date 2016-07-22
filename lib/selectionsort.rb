module Algorithm
	def selection_sort(left_most_index=0)
		raise "this function only supports numbers" if self.any? {|x| !x.is_a?(Fixnum)}
		#find me the smallest number and where its at [0,0]
		smallest_number = self[left_most_index..-1].enum_for(:each_with_index).min
		index_adjustment = left_most_index
		#puts "Analyizing #{self}"
		#puts "Left most index: #{left_most_index}"
		#puts "Smallest number: #{smallest_number[0]}"
		#puts "Smallest number's index: #{smallest_number[1] + index_adjustment}"
		#puts "Swapping index #{left_most_index}, with #{smallest_number[0]} at index #{smallest_number[1] + index_adjustment}"
		#puts "Self == #{self}"
		self.swap_elements(left_most_index, smallest_number[1] + index_adjustment)
		#puts "Self now == #{self}"
		#puts "Checking if the entire array has been sorted: #{left_most_index + 1 == self.size}"
		return self if left_most_index == self.size - 1
		self.selection_sort(left_most_index = left_most_index + 1)
	end

	def swap_elements(e1,e2)
		first = self[e1]
		second = self[e2]
		self[e1] = second
		self[e2] = first
		return self
	end
end

class Array
	include Algorithm
end
