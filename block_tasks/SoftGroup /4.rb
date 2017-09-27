# Write code to sum all of the numbers between 1 and 100 (e.g. 1 + 2 + 3 + ...+ 100)


puts "==============================================================="
puts "Vrsion 1"

count = 0
product = 0

100.times do
  count +=1
  product +=count
  puts "Number #{count}, Sum #{product}"
end
puts '_____________________'
puts "Sum all of the numbers between 1 and 100 (1+2+3..+100):" + product.to_s
puts '_____________________'

puts "==============================================================="
puts "Vrsion 2"

def sum_numbers(num)
  count = 0
  product = 0
  num.times do
    count +=1
    product +=count
    puts "Number #{count}, Sum #{product}"
  end
end
puts sum_numbers(100)

puts "==============================================================="
puts "Vrsion 3"

# We create a range of 1 to 100, converts it into an array, method inject sum numbers
sum_all = (1..100).to_a.inject(0){|sum,x|  sum + x }
puts "Sum all of the numbers between 1 and 100 (1+2+3..+100): #{sum_all}"

puts "==============================================================="





