[head | tail] = [1, 2, 3, 4, 5]
IO.puts head
[t1 | t2] = tail 
IO.puts "2nd element is #{t1}" 

[a, _, a] = [1, 2, 1]
IO.puts a 

[a, b | c] = [100, 20, 30, 40]

IO.puts a 
IO.puts b 