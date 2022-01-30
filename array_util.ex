defmodule ArrayUtil do 
    def add(arr, elem), do: [elem | arr]
    def addElem(0), do: []  
    def addElem(n), do: add(addElem(n - 1), n)
    def split([]), do: []
    def split([a]), do: [a]
    defp merge(list1 = [], list2), do: list2 
    defp merge(list1, list2 = []), do: list1
    defp merge(list1 = [head1|tail1], list2 = [head2|tail2]) when head1 < head2, do: [head1 | merge(tail1, list2)]
    defp merge(list1 = [head1|tail1], list2 = [head2|tail2]) when head2 < head1, do: [head2 | merge(list1, tail2)]
    def split(arr), do: Enum.split(arr, div(Enum.count(arr), 2)) 
    def sort([]), do: []
    def sort([a]), do: [a]
    def sort(arr) do 
        {list1, list2} = split(arr)
        arr = merge(sort(list1), sort(list2))
    end 
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
IO.puts "sorted array"
IO.inspect ArrayUtil.sort([3, 1, 5, 7, 6, 9, 8, 4, 2, 13, 12, 11, 10])