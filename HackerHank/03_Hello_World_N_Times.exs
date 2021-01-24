defmodule Solution do
  def read(:int) do
    IO.gets("")
    |> String.trim()
    |> String.to_integer()
  end
end
Enum.each(1..Solution.read(:int), fn(_x) -> IO.puts "Hello World" end)
