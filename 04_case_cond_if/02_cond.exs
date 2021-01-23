# case é útil quando você precisa comparar valores diferentes.
# No entanto, em muitas circunstâncias, queremos verificar condições diferentes
# e encontrar a primeira que não avalia para nil ou false.

cond do
  2 + 2 == 5 -> IO.puts("Falso 2 + 2 != 5")
  2 * 2 == 3 -> IO.puts("Falso 2 * 2 != 3")
  1 + 1 == 2 -> IO.puts("Verdadeiro 1 + 1 == 2") # Retorno Esperado
end

# Uma condição deve ser verdadeira senão gerará erro. Para evitar adicionamos um true no final.
cond do
  2 + 2 == 5 -> IO.puts("Falso 2 + 2 != 5")
  2 * 2 == 3 -> IO.puts("Falso 2 * 2 != 3")
  true -> IO.puts("Verdadeiro | Equivalente a um else") # Retorno Esperado
end

# cond considera qualquer valor além de nil ou false como verdadeiro:
