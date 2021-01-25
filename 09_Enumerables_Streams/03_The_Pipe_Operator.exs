# O |> Pipe, pega a saída da expressão em seu lado esquerdo e a passa como o primeiro
# argumento para a chamada de função em seu lado direito.

odd? = &(rem(&1, 2) != 0)
Enum.filter(1..3, odd?)

# Exemplo de uma função escrita sem o Pipe
Enum.sum(Enum.filter(Enum.map(1..100_000, &(&1 * 3)), odd?)) #=> 7500000000

# A mesma função escrita com o pipe
1..100_000 |> Enum.map(&(&1 * 3)) |> Enum.filter(odd?) |> Enum.sum #=> 7500000000
