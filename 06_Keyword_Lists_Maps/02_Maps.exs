# Estruturas de Chave / Valor

map = %{:a => 1, 2 => :b}
IO.inspect(map[:a]) # Resposta Esperada 1
IO.inspect(map[2]) # Resposta Esperada :b
IO.inspect(map[:c]) # Resposta Esperada nill

# Em comparação com as listas de palavras-chave, já podemos ver duas diferenças:
# 1. Os mapas permitem qualquer valor como chave.
# 2. As chaves do Maps não seguem nenhuma ordem.

# Quando um mapa é usado em um padrão, ele sempre corresponderá a um subconjunto do valor fornecido
IO.inspect(%{} = %{:a => 1, 2 => :b}) # Resposta Esperada %{2 => :b, :a => 1}

# Variáveis ​​podem ser usadas ao acessar, combinar e adicionar chaves de mapa:
n = 1
map = %{n => :one}
IO.inspect(map) # Resposta Esperada %{1 => :one}

# Manipulação de maps
get = Map.get(%{:a => 1, 2 => :b}, :a)
IO.inspect(get) # Resposta Esperada 1

put = Map.put(%{:a => 1, 2 => :b}, :c, 3)
IO.inspect(put) # Resposta Esperada %{2 => :b, :a => 1, :c => 3}

lista = Map.to_list(%{:a => 1, 2 => :b})
IO.inspect(lista) # Resposta Esperada [{2, :b}, {:a, 1}]

# Atualização do valor de uma chave
map = %{:a => 1, 2 => :b}
IO.inspect(%{map | 2 => "two"}) # Resposta Esperada %{2 => "two", :a => 1}

# Os maps fornecem sua própria sintaxe para acessar as chaves atoms
map = %{:a => 1, 2 => :b}
IO.inspect(map.a) # Resposta Esperada 1
