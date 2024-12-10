```elixir
# Solution 1: Using Enum.reduce
list = [1, 2, 3, 4, 5]

result = Enum.reduce(list, :ok, fn x, acc ->
  if x == 3 do
    {:halt, :three}
  else
    IO.puts(x)
    acc
  end
end)

IO.puts(result)

# Solution 2: Using try...catch block
list = [1, 2, 3, 4, 5]

try do
  Enum.each(list, fn x ->
    if x == 3 do
      throw(:three)
    end
    IO.puts(x)
  end)
  IO.puts("Finished")
catch
  :three -> IO.puts("Caught :three")
end
```