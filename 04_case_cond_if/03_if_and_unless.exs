# if e unless são úteis quando desejamos verificar somente uma condição
# Se a condição oferecida para o if retornar false ou nil ele não executa o código entre o (do end)

if String.valid?("É uma String") do
   IO.puts("Sim! a frase acima é uma String!") # Resultado Esperado
 else
   IO.puts("Opção inválida.")
end

if String.valid?(2.99) do
  IO.puts("Sim! a frase acima é uma String!")
else
  IO.puts("Opção inválida. Não é uma String") # Resultado Esperado
end

# Exatamente igual ao if só que de forma negativa
unless is_integer("Uma String") do
   IO.puts("Não é um inteiro") # Resultado esperado
end
