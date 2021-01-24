# O &1representa o primeiro argumento passado para a função.
# &(&1 + 1) é exatamente igual a fn x -> x + 1 end.
# A sintaxe é útil para definições curtas de funções.

fun = &(&1 + 1)
IO.puts(fun.(1)) # Resposta Esperada 2
IO.puts(fun.(3)) # Resposta Esperada 4

# &List.flatten(&1, &2)é o mesmo que escrever fn(list, tail) -> List.flatten(list, tail) end
# que, neste caso, é equivalente a &List.flatten/2.
fun = &List.flatten(&1, &2)
IO.inspect(fun.([1, [[2], 3]], [4, 5])) # Resultado Esperado [1, 2, 3, 4, 5]
