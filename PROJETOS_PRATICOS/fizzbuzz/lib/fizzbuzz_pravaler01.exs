defmodule FizzBuzz do
  def start(list) do
    Enum.map(list, &FizzBuzz.compute/1)
  end

  def compute(n) do
    fizzbuzz(rem(n, 3), rem(n, 5), n)
  end

  defp fizzbuzz(0, 0, _), do: "FizzBuzz"
  defp fizzbuzz(0, _, _), do: "Fizz"
  defp fizzbuzz(_, 0, _), do: "Buzz"
  defp fizzbuzz(_, _, n), do: n

end

IO.inspect(FizzBuzz.start(1..100))
