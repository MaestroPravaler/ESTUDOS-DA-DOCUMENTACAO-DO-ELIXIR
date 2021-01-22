# Boleanos true / false

defmodule Boleanos do
  def true_false(a, b) do
    (a == b)
  end
end

IO.puts(Boleanos.true_false(2, 2)) # Resposta esperada true
IO.puts(Boleanos.true_false(2, 3)) # Resposta esperada false
