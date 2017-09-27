# Write code to turn the string "Fizz::Buzz::Wizz" into an array ["Fizz::Buzz::Wizz", "Fizz::Buzz", "Fizz"]
str = 'Fizz::Buzz::Wizz'

def turn_into_array(str)
  arr = str.split('::')
  size = arr.size
  result = []

  size.times do |i|
    result[i] = arr.join('::')
    arr.pop
  end

  result
end

print turn_into_array(str)