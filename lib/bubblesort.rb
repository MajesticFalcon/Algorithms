module Algorithm
	def bubble_sort
		raise "Bubble Sort only works on arrays containing only integers" if !self.is_a?(Array) || self.any?{|e| !e.is_a?(Fixnum)}
		sorted = 0
		self.each_with_index do |x, index|
			break if index == self.size-1
			if x > self[index + 1]
				sorted = 1
				second = self[index + 1]
				first = self[index]
				self[index] = second
				self[index +1] = first
			end
		end
		if sorted == 1
			self.bubble_sort
		else
			return self
		end
	end
end

class Array
	include Algorithm
end
