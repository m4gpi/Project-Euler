# The sequence of triangle numbers is generated by adding the natural numbers.
# So the 7th triangle number would be 1 + 2 + 3 + 4 + 5 + 6 + 7 = 28. The first ten terms would be:

# 1, 3, 6, 10, 15, 21, 28, 36, 45, 55, ...

# Let us list the factors of the first seven triangle numbers:

# 1: 1
# 3: 1,3
# 6: 1,2,3,6
# 10: 1,2,5,10
# 15: 1,3,5,15
# 21: 1,3,7,21
# 28: 1,2,4,7,14,28
# We can see that 28 is the first triangle number to have over five divisors.

# What is the value of the first triangle number to have over five hundred divisors?

# Kieran's Solution

def triangle(n)
  sum = 0
  for i in 1..n
    sum += i
  end
  return sum
end

n = 1
while count < 500
  count = 0
  for i in 1..triangle(n)
    if triangle(n) % i == 0
      count += 1
    end
  end
  n += 1
end
return n

## TAKES TOO LONG - DAYS - Gets exponentially slower

# Solution with Help

def NumberOfDivisors(n)
  nod = 0
  sqrt = Math.sqrt(n)

  for i in 1..sqrt
    if n % i == 0
      nod += 2
    end
  end
   if sqrt ** 2 == n
     nod -= 1
   end
   return nod
end

n = 0
i = 1

while NumberOfDivisors(n) < 500
  n += i
  i += 1
end