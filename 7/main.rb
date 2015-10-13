def is_prime?(n)
  if n == 1
    return false
  elsif [2,3].include? n
    return true
  elsif n % 2 == 0 or n % 3 == 0
    return false
  elsif n < 9
    return true
  else
    n_sqrt = n ** 0.5
    current = 5
    until current > n_sqrt
      if n % current == 0 || n % (current + 2) == 0
        return false
      end
      current = current + 6
    end
    return true
  end
end

num = 10001

count = 0
candidate = 1
loop do
  count += 1 if is_prime? candidate
  break if count == num
  candidate += 1
end

puts candidate
