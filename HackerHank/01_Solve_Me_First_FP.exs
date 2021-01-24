defmodule Solution do
  def read(:int) do
    IO.gets("")
    |> String.trim()
    |> String.to_integer()
  end
end

IO.puts(Solution.read(:int) + Solution.read(:int))
