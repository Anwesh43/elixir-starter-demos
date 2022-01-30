defmodule ArrayUtil do 
    def add(arr, elem), do: [elem | arr]
    def addElem(0), do: []  
    def addElem(n), do: add(addElem(n - 1), n)
    def split(arr), do: Enum.split(arr, div(Enum.count(arr), 2))
end


arr = ArrayUtil.add([], 1)
arr = ArrayUtil.add(arr, 2)
arr = ArrayUtil.add(arr, 5)
IO.inspect arr 
IO.inspect ArrayUtil.addElem(10)
arr = ArrayUtil.addElem(10)
{a, b} = ArrayUtil.split(arr)
IO.puts "First array"
IO.inspect a 
IO.puts "Second array"
IO.inspect b 