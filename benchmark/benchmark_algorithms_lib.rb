require_relative "../lib/bubblesort"
require_relative "../lib/selectionsort"
require_relative "../lib/insertionsort"
require 'benchmark'
require 'benchmark/ips'

#Selection sort can't handle big arrays
sort_array = Array.new(5).fill { Random.rand(200) }


n = 5_000



Benchmark.bm do |x|

x.report("BubbleSort:") { n.times {sort_array.bubble_sort } }
x.report("SelectionSort:") { n.times { sort_array.selection_sort } }
x.report("InsertionSort:") { n.times { sort_array.insertion_sort } }

end


Benchmark.ips do |x|

x.report("BubbleSort:") { n.times {sort_array.bubble_sort } }
x.report("SelectionSort:") { n.times { sort_array.selection_sort } }
x.report("InsertionSort:") { n.times { sort_array.insertion_sort } }

end
