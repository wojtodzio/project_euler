num = 1000
multiples = [3, 5]

def sum_of_multiples_below(multiple, below)
  below -= 1
  maks = below / multiple
  return multiple * (maks * (maks + 1)) / 2
end

sum = 0
until multiples.empty?
  current = multiples.pop

  sum += sum_of_multiples_below(current, num)
  multiples.each do |multiple|
    recurring = current * multiple
    sum -= sum_of_multiples_below(recurring, num)
  end
  puts sum
end

puts sum
