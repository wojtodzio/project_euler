require 'Prime'

num = 600851475143

prime = 0

Prime.each do |p|
  if num % p == 0
    prime = p
    num /= p
  end
  if num == 1
    break
  end
end

puts prime

num = 600851475143
last = 1
divisor = 2
max = num**0.5
while max >= divisor && num > 1
  if num % divisor == 0
    last = divisor
    while num % divisor == 0
      num = num / divisor
    end
    max = num**0.5
  end
  divisor += 1
end

if num == 1
  puts last
else
  puts num
end
