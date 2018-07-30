# If you are given an array of undetermined length with numbers in random order. Please write a
# method to return the minimum # of elements that add up to a number >= X (where X is an input to
# the method? (e.g. array = [1,4,3,2], X = 6, answer is 2 elements: 4 + 3)

def minimum_sum(array, x)
  sum = 0
  array.sort.reverse.each_with_index do |e, i|
    sum = sum + e
    puts "Number #{e}"
    return puts "Answer is #{i+1} elements, Suma #{sum} >= #{x}" if sum >= x
  end
  return puts "There are no elements that was >= #{x}"
end

array = Array.new
puts "Enter the array:"
array = gets.chomp.split(' ').map { |i| i.to_i }

puts "Enter the number you want to reach:"
x = gets.chomp.to_i

puts "==============================="
puts minimum_sum(array, x)
puts "==============================="



