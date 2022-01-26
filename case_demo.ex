defmodule CaseDemo do 
    def parse_number(input) do 
        result = case Integer.parse(input) do 
            :error -> "An error"
            {inp, _} -> "This is a number #{inp}"
        end
        IO.puts result
    end
end

CaseDemo.parse_number("er")
CaseDemo.parse_number("1000")