def fib(n)
  return 1 if n <= 1
  fib(n - 1) + fib(n - 2)
end

puts fib(ARGV[0].to_i)
