# Pattern matching tuples
{ status, content } = { :ok, "Some Content" }
{ :error, content } = { :error, "Some error occurred" }

defmodule Account do
   def parse_file({:ok, content}) do
      IO.puts "Transactions: #{content}"
   end

   def parse_file({:error, error}) do
      IO.puts "Error parsing the file: #{error}"
   end
end

File.read("lists.exs") |> Account.parse_file()
File.read("listerrrrrrr.exs") |> Account.parse_file() 
