# Uma função privada (defp) só pode ser chamada localmente

defmodule Math do
  def sum(a, b) do
    do_sum(a, b)
  end

  defp do_sum(a, b) do
    a + b
  end
end

IO.puts Math.sum(1, 2)    # Retorno Esperado 3
IO.puts Math.do_sum(1, 2) # Retorno Esperado ** (UndefinedFunctionError)

# A ? na frete da função retorna um boleano
# Fornecer um argumento que não corresponda a nenhuma das cláusulas gera um erro.
defmodule Math do
  def zero?(0) do
    true
  end

  def zero?(x) when is_integer(x) do
    false
  end
end

IO.puts Math.zero?(0)         # Retorno Esperado true
IO.puts Math.zero?(1)         # Retorno Esperado false
IO.puts Math.zero?([1, 2, 3]) # Retorno Esperado ** (FunctionClauseError)
IO.puts Math.zero?(0.0)       # Retorno Esperado ** (FunctionClauseError)

# Semelhante a construções como if, as funções nomeadas suportam a sintaxe do:e do/ endblock,
defmodule Math do
  def zero?(0), do: true
  def zero?(x) when is_integer(x), do: false
end
