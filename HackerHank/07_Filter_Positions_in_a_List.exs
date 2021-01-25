
defmodule Solution do
  [ _ | tail] = String.split(IO.read(:stdio, :all), [" ", "\n"])
  Enum.map_every(tail, 2, fn x -> IO.puts(x) end)
 end
