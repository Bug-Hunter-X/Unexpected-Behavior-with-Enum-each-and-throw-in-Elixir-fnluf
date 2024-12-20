```elixir
list = [1, 2, 3, 4, 5]

result = Enum.reduce(list, {:ok, []}, fn x, acc -> 
  case acc do
    {:ok, accList} ->
      if x == 3 do
        {:error, accList}
      else
        {:ok, [x | accList]}
      end
    {:error, accList} -> {:error, accList} 
  end
end)

case result do
  {:ok, list} -> IO.puts("Processed list: " <> inspect(Enum.reverse(list)))
  {:error, list} -> IO.puts("Error processing list. Processed elements:" <> inspect(Enum.reverse(list)))
end
```