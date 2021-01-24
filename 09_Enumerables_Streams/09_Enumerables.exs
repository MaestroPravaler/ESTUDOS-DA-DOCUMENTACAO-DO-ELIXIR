# o Módulo Enum possue diversas funcionalidades para manipulação de listas e maps.

IO.inspect Enum.map([1, 2, 3], fn x -> x * 2 end) #=> [2, 4, 6]
IO.inspect Enum.map(%{1 => 2, 3 => 4}, fn {k, v} -> k * v end) #=> [2, 12]

# O Enum oferece uma grande variedade de funções para transformar, classificar, agrupar,
# filtrar e recuperar itens de enumeráveis. É um dos módulos que os desenvolvedores usam
# com frequência em seu código Elixir.

# Elixir também oferece faixas:
IO.inspect Enum.map(1..3, fn x -> x * 2 end) #=> [2, 4, 6]
IO.inspect Enum.reduce(1..3, 0, &+/2) #=> 6
