# Sintaxe sem a necessidade do end no final do bloco (lembre da , e o do:)

if true, do: IO.puts(1 + 2) # Resultado Esperado 3

if false, do: IO.puts(:this), else: IO.puts(:that) # Resultado Esperado : that

# Vincular todo o bloco utiliza-se parenteses.
is_number(if true do IO.puts(1 + 2) end) # Resultado Esperado 3
