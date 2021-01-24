defmodule Soluction do
  def lista(:eof), do: "" # Se for o final da lista
  def lista(number) do # Modifica o valor e imprime
    number
    |> String.trim()
    |> String.to_integer()
    |> abs() # Retorna o Absoluto
    |> IO.puts()
    lista()
  end
  def lista(), do: lista(IO.gets(""))# Recebe o Valor
end

Soluction.lista()
