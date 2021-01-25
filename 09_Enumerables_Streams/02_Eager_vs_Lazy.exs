# Ao realizar várias operações com Enum, cada operação vai gerar uma lista intermediária
# até chegarmos ao resultado:

1..100_000 |> Enum.map(&(&1 * 3)) |> Enum.filter(odd?) |> Enum.sum #=> 7500000000

# O exemplo acima tem um pipeline de operações. Começamos com um intervalo e, em seguida,
# multiplicamos cada elemento no intervalo por 3. Esta primeira operação criará e retornará
# uma lista com 100.000 itens. Em seguida, retiramos todos os elementos ímpares da lista,
# gerando uma nova lista, agora com 50.000 itens, e somamos todas as entradas.
