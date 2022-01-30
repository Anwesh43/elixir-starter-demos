defmodule TailCall do 
    def of(num), do: factorial(num, 1)
    def factorial(0, acc), do: acc 
    def factorial(n, acc), do: factorial(n - 1, acc * n)
end 

IO.puts TailCall.of(1000)