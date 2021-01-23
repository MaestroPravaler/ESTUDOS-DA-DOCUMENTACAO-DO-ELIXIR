# Concatenação de strings (<>)
strings_juntas = "Meu nome é: " <> "Robson Dias"
IO.puts(strings_juntas)

# Operadores or, and (São restritos esperando uma saída boleana como primeiro argumento)
IO.puts(true and 1) # Resultado Esperado 1
IO.puts(true or 1) # Resultado Esperado true

# Operadores &&, || e ! aceita argumentos de qualquer tipo.
# Para esses operadores, todos os valores, exceto false e nil serão avaliados como verdadeiros
# or
IO.puts(1 || true) # Valor Esperado 1
IO.puts(false || 11) # Valor Esperado 11

# and
IO.puts(nil && 13) # Valor Esperado nil
IO.puts(true && 17) # Valor Esperado 17

# not
IO.puts(!true) # Valor Esperado false
IO.puts(!1) # Valor Esperado false
IO.puts(!nil) # Valor Esperado true


# Os operadores de comparação ==, !=, ===, !==, <=, >=, < e >
IO.puts(1 == 1) # Resultado Esperado true
IO.puts(1 != 1) # Resultado Esperado false
IO.puts(1 === 1.0) # Resultado Esperado false (=== é mais restritivo)
IO.puts(1 == 1.0) # Resultado Esperado true (menos restritivo)
IO.puts(1.0 !== 1) # Resultado Esperado true
IO.puts(1 <= 1.0) # Resultado Esperado true
IO.puts(1 >= 1) # Resultado Esperado true
IO.puts(1 < 1) # Resultado Esperado false
IO.puts(1 > 1) # Resultado Esperado false
