#The Fibonacci sequence is defined by the recurrence relation:

=begin
Fn = Fn1 + Fn2, where F1 = 1 and F2 = 1.
Hence the first 12 terms will be:

F1 = 1
F2 = 1
F3 = 2
F4 = 3
F5 = 5
F6 = 8
F7 = 13
F8 = 21
F9 = 34
F10 = 55
F11 = 89
F12 = 144
The 12th term, F12, is the first term to contain three digits.

What is the first term in the Fibonacci sequence to contain 1000 digits?
=end

def fib(n)
	fn, fn1, fn2 = 0, 1, 1
	tcount = 2
	while fn.to_s.length < n
		fn = fn2 + fn1
		fn1, fn2 = fn2, fn
		tcount += 1 
	end
	return tcount
end

fib(1000)