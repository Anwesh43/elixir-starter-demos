%{a: var_a, b: var_b} = %{a: 10, b: 12}
IO.puts "value of a is #{var_a}"
IO.puts "value of b is #{var_b}"

date = ~D[2018-02-01]
%{year: year} = date 

IO.puts "year is #{year}"
