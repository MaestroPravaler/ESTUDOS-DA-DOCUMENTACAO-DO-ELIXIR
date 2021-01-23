# O operador de correspondencia pode ser utilizado para dados mais complexos inclusive tuplas

{a, b, c} = {1, 2, 3}

IO.puts(a) # Resposta esperada 1
IO.puts(b) # Resposta esperada 2
IO.puts(c) # Resposta esperada 3

# Tipos de erros - número de argumentos diferentes / diferente tipos tupla / lista
# {a, b, c} = {1, 2} # ** (MatchError) no match of right hand side value: {1, 2}
# {a, b, c} = [1, 2, 3] # ** (MatchError) no match of right hand side value: [1, 2, 3]

# Uma lista suporta Match com head(hd) e tail(tl)
[head | tail] = [1, 2, 3]

IO.inspect(head)
IO.inspect(tail)

# Podemos utilizar o padrão [head | tail] para adicionar elementos em uma lista
lista = [1, 3, 7]

IO.inspect([0 | lista]) # Resultado Esperado [0, 1, 3, 7]
