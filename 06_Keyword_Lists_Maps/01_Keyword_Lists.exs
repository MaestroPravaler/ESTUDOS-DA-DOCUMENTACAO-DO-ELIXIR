# Quando temos uma lista de tuplas e o primeiro item da tupla (ou seja, a chave) é um átomo,
# nós o chamamos de Keyword lists

list = [{:a, 1}, {:b, 2}]
IO.puts(list == [a: 1, b: 2]) # Resposta Esperada true

# Adicionando novos valores da lista (++)
list2 = list ++ [c: 3]
IO.inspect(list2) # Resposta Esperada [a: 1, b: 2, c: 3]

list3 = [a: 0] ++ list
IO.inspect(list3) # Resposta Esperada [a: 0, a: 1, b: 2]

# Valores adicionados a frente são retornados na pesquisa
IO.inspect(list3[:a]) # Resposta Esperada 0

# As listas de palavras-chave são importantes porque têm três características especiais:
# 1. As chaves devem ser atoms.
# 2. As chaves são ordenadas, conforme especificado pelo desenvolvedor.
# 3. As chaves podem ser fornecidas mais de uma vez.
# O ECTO utiliza este recurso para escrever querrys interessantes
# Essas características são o que faz com que as keyword lists sejam o mecanismo padrão
# para passar opções para funções no Elixir.

# Observe o exemplo de if e else abaixo - é uma lista com argumentos
if false, do: IO.puts(:this), else: IO.puts(:that) # Resultado Esperado : that
if(false, [do: IO.puts(:this), else: IO.puts(:that)]) # Resultado Esperado : that
if(false, [{:do, IO.puts(:this)}, {:else, IO.puts(:that)}]) # Resultado Esperado : that

# Em geral, quando a keyword list é o último argumento de uma função, os colchetes são opcionais.
