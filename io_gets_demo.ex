{ability_score, _} =  "Enter your ability_score" |> IO.gets |> Integer.parse
IO.puts "ability score is #{ability_score}"
