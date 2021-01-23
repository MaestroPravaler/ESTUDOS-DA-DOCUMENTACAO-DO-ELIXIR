# Usamos um ? na frente de um caractere para revelar seu código padrão unicode.

IO.puts(?a) # Resultado Esperado 97
IO.puts(?*) # Resultado Esperado 42

# Hexadecimal
IO.puts("\u0061" === "a") # Resultado Esperado true
