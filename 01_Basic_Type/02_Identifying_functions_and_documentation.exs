# Função e aridade (número de parâmetros que a função recebe)
# Exemplo: soma/2 - Função soma recebe dois argumentos

defmodule FuncaoAridade do
  def soma(a, b) do
    (a + b)
  end
end

IO.puts(FuncaoAridade.soma(4, 8))
