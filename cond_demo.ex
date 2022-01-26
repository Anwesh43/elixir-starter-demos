defmodule CondDemo do 
    def checkAge(age) do 
        result = cond do 
            age < 5 -> "Infant"
            age>=13 && age <18 -> "Teenager"
            age >= 18 -> "Adult"
        end
        result 
    end
end
IO.puts CondDemo.checkAge(25)
IO.puts CondDemo.checkAge(15)
IO.puts CondDemo.checkAge(3)