# You have sorted array of numbers ( e.g. [1,4,5,7,8,10,20] ) Please implement a method which will
# search element in that array and return its index. ( e.g. el = 7, print index => 3 ). Think about the most
# optimal solution.

def search_element_return_index(array, search_element)
  index = array.sort.index { |x| x == search_element }
    if index == nil
      puts "Not search"
    end
  index
end

array = Array.new
puts "Enter the array:"
array = gets.chomp.split(' ').map { |i| i.to_i }.sort

puts "Search element:"
search_element = gets.chomp.to_i

puts "Your array: #{array}"
puts "Your search: #{search_element}"
puts "Index: #{search_element_return_index(array, search_element)}"







