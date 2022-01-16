defmodule NumberComparator do 
    def greater(num1, num2) do 
        check(num1 > num2, num1, num2)
    end
    def lesser(num1, num2) do
        check(num1 < num2, num1, num2)
    end
    defp check(true, number, _), do: number 
    defp check(false, _, other_number), do: other_number
end

IO.puts "Number greater between 6, 2 #{NumberComparator.greater(6, 2)}"
IO.puts "Number greater between 1, 2 #{NumberComparator.greater(1, 2)}"
IO.puts "Number lesser between 6, 2 #{NumberComparator.lesser(6, 2)}"
IO.puts "Number lesser between 1, 2 #{NumberComparator.lesser(1, 2)}"
