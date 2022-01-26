defmodule GuardNumber do 
    def abs(num1) when num1 >= 0, do: num1 
    def abs(num2), do: -1 * num2 
    
end

defmodule EvenOrOdd do 
    require Integer 
    defguard is_even(num) when Integer.is_even(num)
    defguard is_odd(num) when Integer.is_odd(num)
    def check(num) when is_odd(num), do: "odd"
    def check(num) when is_even(num), do: "even"
end

IO.puts GuardNumber.abs(5)
IO.puts GuardNumber.abs(-5)
IO.puts GuardNumber.abs(-100)
IO.puts EvenOrOdd.check(20)
IO.puts EvenOrOdd.check(21)
IO.puts EvenOrOdd.check(33)
IO.puts EvenOrOdd.check(34)