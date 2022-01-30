defmodule BoundedRecur do 
    def add(0), do: 0
    def add(num), do: num + add(num - 1)
    def sum([]), do: 0 
    def sum([head | tail]), do: head + sum(tail)
   
end


IO.puts BoundedRecur.add(10)
IO.puts BoundedRecur.sum([1, 2, 3, 4, 5, 6, 11, 12])
