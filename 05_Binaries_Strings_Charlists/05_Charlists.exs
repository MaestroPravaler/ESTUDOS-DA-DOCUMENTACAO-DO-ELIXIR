# Uma charlist é uma lista de inteiros onde todos os inteiros são pontos de código válidos.
# Na prática, você não os encontrará com frequência, exceto talvez ao interagir com Erlang,
# em particular ao usar bibliotecas mais antigas que não aceitam binários como argumentos.

IO.inspect('hello', charlists: :as_lists) # Retorno Esperado [104, 101, 108, 108, 111]

# A concatenação de string (binária) usa o <>operador, mas charlists, sendo listas,
# usam o operador de concatenação de lista ++:

IO.puts('this ' ++ 'works') # Retorno Esperado this works (observe as aspas simples)
