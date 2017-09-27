array = []
500000000.times.map do
  Thread.new do
    10000000.times do
      array << nil
    end
  end
end.each(&:join)

puts array.size

# run ruby MRI => 50000
# run Jruby => 48667
