
module Algorithm

	def insertion_sort(left_most_number_index=1)
		#p " "
		#p " "
		#p "Examing self: #{self}"
		ln = left_most_number_index
		#	puts "Examining ln: #{self[ln]} at #{ln}"
		#	puts "One before ln: #{self[ln-1]} at #{ln-1}"
		#	puts "ln - 1 > ln?: #{self[ln-1] > self[ln]}"
		if self[ln-1] > self[ln]
		#	puts "looping until self[ln] is index 0 or self[ln] is greater than self[ln-1]"
			#until ln == 0 || self[ln] > self[ln-1]
			loop do
		#		puts "ln == 0: #{ln==0}"
				break if ln == 0
				break if self[ln] > self[ln - 1]
		#		puts "#{self[ln]} is greater than #{self[ln-1]}:? #{self[ln] > self[ln-1]}"
			self.swap_elements(ln, ln - 1)
				ln -= 1
			end
		#	puts "END OF LOOP"
		#	puts "ln now == #{ln}"
			
		end
		return self if left_most_number_index == self.size - 1
		left_most_number_index += 1
		self.insertion_sort(left_most_number_index)
		
	end

	def swap_elements(e1,e2)
		first = self[e1]
		second = self[e2]
		self[e1] = second
		self[e2] = first
	end

end

class Array
	include Algorithm
end
