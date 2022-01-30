defmodule ArrayUtil do 
    def add(arr, elem), do: [elem | arr]
    def addElem(0), do: []  
    def addElem(n), do: add(addElem(n - 1), n)
end

arr = ArrayUtil.add([], 1)
arr = ArrayUtil.add(arr, 2)
arr = ArrayUtil.add(arr, 5)
IO.inspect arr 
IO.inspect ArrayUtil.addElem(10)