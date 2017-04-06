defmodule Account do
   def run_transaction(balance, amount, transaction) do
      if balance <= 0 do
         "Cannot perform any transaction"
      else
         transaction.(balance, amount) # call anonymous function that was passed as the 3rd parameter to the run_transaction
      end
   end
end

max_balance = fn(amount) -> "Max: #{amount}" end
IO.puts max_balance.(500)

deposit = fn(balance, amount) -> balance + amount end
# deposit = &(&1 + &2) shorthand for above

withdrawal = fn(balance, amount) -> balance - amount end
# deposit = &(&1 - &2) shorthand for above

Account.run_transaction(1000, 20, withdrawal) # returns 980
Account.run_transaction(1000, 20, deposit) # returns 1020
Account.run_transaction(0, 20, deposit) # returns "Cannot perform any transaction"


account_transaction = fn
   (balance, amount, :deposit) -> balance + amount
   (balance, amount, :withdrawal) -> balance - amount
end

account_transaction.(100, 40, :deposit) # returns 140
account_transaction.(100, 40, :withdrawal) # returns 60


Enum.map([1, 2, 3, 4], &(&1 * 2)) # returns [2, 4, 6, 8]
