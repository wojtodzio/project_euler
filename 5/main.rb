require 'Prime'

num = 20
result = 1
limit = num**0.5
check = true

Prime.each do |p|
  break if p > num
  count = 1
  if check
    if p <= limit
      count = Math.log(num, p).to_i
    else
      check = false
    end
  end

  result *= p**count
end

puts result
