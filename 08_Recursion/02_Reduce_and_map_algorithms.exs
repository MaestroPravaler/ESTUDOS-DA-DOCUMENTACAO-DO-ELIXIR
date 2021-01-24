defmodule Math do
  def sum_list([head | tail], accumulator) do
    sum_list(tail, head + accumulator)
  end

  def sum_list([], accumulator) do
    accumulator
  end
end

IO.puts Math.sum_list([1, 2, 3], 0) #=> 6

# O processo de pegar uma lista e reduzi -la a um valor é conhecido como algoritmo de redução
# e é central para a programação funcional.

# E se, em vez disso, quisermos dobrar todos os valores em nossa lista?

defmodule Math do
  def double_each([head | tail]) do
    [head * 2 | double_each(tail)]
  end

  def double_each([]) do
    []
  end
end

IO.inspect(Math.double_each([1, 2, 3])) #=> [2, 4, 6]

# Aqui, usamos a recursão para percorrer uma lista, dobrando cada elemento e retornando
# uma nova lista. O processo de obter uma lista e mapear sobre ela é conhecido como
# algoritmo de mapa .

# ! Ao programar em Elixir, você raramente usará a recursão como acima para manipular listas.
# ! O Enum  já oferece muitas conveniências para trabalhar com listas.

# Reescrevendo os códigos acima
IO.puts Enum.reduce([1, 2, 3], 0, fn(x, acc) -> x + acc end) #=> 6
IO.inspect Enum.map([1, 2, 3], fn(x) -> x * 2 end) #=> [2, 4, 6]

# Usando a Sintaxe de captura
IO.puts Enum.reduce([1, 2, 3], 0, &+/2) #=> 6
IO.inspect Enum.map([1, 2, 3], &(&1 * 2)) #=> [2, 4, 6]
