# No Case comparamos multiplos valores até encontrar um que dê match

case {1, 2, 3} do
  {1, x, 3} when x > 1 ->
    IO.puts("Deu Match") # Retorno Esperado
  _ ->
    IO.puts("Ichi! não deu Match")
end

case {1, 2, 3} do
  {1, x, 3} when x > 3 ->
    IO.puts("Deu Match")
  _ ->
    IO.puts("Ichi! não deu Match") # Retorno Esperado
end

valor = 25

case "Verifica Valor" do
  ^valor -> IO.puts("Não é este")
  valor -> IO.puts("É verdadeiro então retorna o nome do case: #{valor}") # Retorno Esperado
end
