maks = 4000000
sum = 0

def nth_fibonacci(n)
  (((1.0 + 5**0.5)/2)**n / 5**0.5).round
end

n = 1

loop do
  fib = nth_fibonacci(n)
  sum += fib if fib % 2 == 0
  n += 1

  break if fib > maks
end

puts sum
