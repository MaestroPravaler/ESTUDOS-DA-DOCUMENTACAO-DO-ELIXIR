defmodule Solution do

  [head | tail] = String.split(IO.read(:stdio, :all), [" ", "\n"])
  {k, _} = Integer.parse(head)
  Enum.map(tail, fn x ->
    if (String.to_integer(x) < k), do: IO.inspect(String.to_integer(x))
    end)

end

# =======================================================================

defmodule Solution do
  [s | tail] = String.split(IO.read(:stdio, :all), [" ", "\n"])
  {x, _} = Integer.parse(s)
  Enum.filter(tail, &(elem(Integer.parse(&1), 0) < x)) |> Enum.map(&(IO.puts(&1)))
end

# =======================================================================
