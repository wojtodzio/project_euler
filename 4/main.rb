arr = (100...1000).to_a.reverse

def palindrome?(str)
    str == str.reverse
end

pal = 0

arr.each do |q|
  arr.each do |w|
    num = q*w
    if palindrome?((num).to_s)
      if num > pal
        pal = num
      end
      break
    end
  end
end

puts pal
