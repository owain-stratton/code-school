languages = ["Elixir", "JavaScript", "Ruby"]
[head | tail] = languages

defmodule Language do
   def print_list([head | tail]) do
      IO.puts "Head: #{head}"
      IO.puts "Tail: #{tail}"
   end
end

Language.print_list(languages)

# Recursive functions
defmodule Food do
   def print_food([head | tail]) do
      IO.puts head
      print_food(tail) # Function invokes itself after printing the head
   end

   def print_food([]) do # Matched when the function is called with an empty list to stop recursion
   end
end

foods = ["Apple", "Lasagne", "Turkey", "Bacon", "Lingon"]
Food.print_food(foods)
