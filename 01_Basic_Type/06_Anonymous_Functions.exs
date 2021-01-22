# As funções anônimas nos permitem armazenar e passar código executável como se fosse
# um inteiro ou uma string. Eles são delimitados pelas palavras fn- chave e end


# Reescrevendo a função soma (02_identifying_functions_and_documentations.exs) com funções anônimas
soma = fn a, b -> a + b end

IO.puts(soma.(5, 8))

IO.puts(is_function(soma))
