defmodule Solution do

  [head | tail] = String.split(IO.read(:stdio, :all), [" ", "\n"])
  {k, _} = Integer.parse(head)
  Enum.map(tail, fn x ->
    if (String.to_integer(x) < k), do: IO.inspect(String.to_integer(x))
    end)

end
