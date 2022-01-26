defmodule IfUnlessDemo do 
    def greater(num1, num2) do
        if num1 > num2 do 
            num1 
        else 
            num2 
        end 
    end
    def lesser(num1, num2) do 
        unless num1 > num2 do 
            num1
        else 
            num2 
        end  
    end
end

IO.puts "greater number between 100 and 20 is #{IfUnlessDemo.greater(100, 20)}"
IO.puts "lesser number between 1000 and 120 is #{IfUnlessDemo.lesser(1000, 120)}"
