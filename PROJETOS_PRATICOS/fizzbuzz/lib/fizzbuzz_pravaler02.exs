defmodule Solution do
  def fizz_buzz(n) do
    cond do
      rem(n, 3) == 0 && rem(n, 5) == 0 -> IO.puts("FizzBuzz")
      rem(n, 3) == 0 -> IO.puts("Fizz")
      rem(n, 5) == 0 -> IO.puts("Buzz")
      1 -> IO.puts(n)


    end
  end

  def solve(numbers) do
    Enum.map(numbers, &Solution.fizz_buzz/1)
  end
end

Solution.solve(1..100)
