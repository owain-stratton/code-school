defmodule Account do

   # Any data type preceded by ':' like :deposit is called an atom
   def run_transaction(balance, amount, :deposit) do
      balance + amount
   end

   def run_transaction(balance, amount, :withdrawal) do
      balance - amount
   end

   def balance(initial, spending) do
      # the return of the discount function is used as the first parameter to the interest function using '|>' operator
      discount(initial, 10)
      |> interest(0.1)
      # |> another_func()....
   end

   def discount(total, amount) do

   end

   def interest(total, rate) do

   end

   def print_sum do
      1..10
      |> Enum.sum
      |> IO.puts
   end

end

# current_balance = Account.balance(1000, 500)
# IO.puts "Current balance is: #{current_balance}"

Account.print_sum

1000
|> Account.run_transaction(50, :deposit) # returns 1050
|> Account.run_transaction(30, :withdrawal) # returns 1020
