# As listas são delimitadas por colchetes e os valores podem ser de qualquer tipo

lista = [1, 2, "algoaqui", 2.9]

# Tamanho da lista
IO.puts("Esta lista possui #{length(lista)} elementos.")

# Concatenando duas listas (++)
lista_concatenada = [1, 2, 3] ++ [3, 4, 5] # Resultado esperado: [1, 2, 3, 3, 4, 5]
IO.inspect lista_concatenada, label: "Este é o resultado da lista concatenada "

# Subtraindo elementos de uma lista (--)
lista_subtraida = [1, 2, 3] -- [3, 4, 5] # Resultado esperado: [1, 2]
IO.inspect lista_subtraida, label: "Este é o resultado da lista subtraída "

# Extraindo o head da lista (hd)
IO.inspect hd(lista), label: "Este é o head da lista " # Resultado esperado: 1

# Extraindo o tail da lista (tl)
IO.inspect tl(lista), label: "Este é o tail da lista " # Resultado esperado: [2, "algoaqui", 2.9]
