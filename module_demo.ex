defmodule MathOps do 
    def square(a) do
        a * a
    end 
    def multiply(a, b) do
        a * b
    end 
    def divide(a, b) do
        a / b
    end
end 

print = fn num -> IO.puts "the result is #{num}" end 

print.(MathOps.square(10))
print.(MathOps.multiply(10, 3))
print.(MathOps.divide(10, 3))