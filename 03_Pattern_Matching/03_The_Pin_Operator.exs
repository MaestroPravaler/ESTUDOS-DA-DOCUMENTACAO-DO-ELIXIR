# Use o operador pin ^ fixa o valor da variável

x = 1
[^x, 2, 3] = [1, 2, 3]
{y, ^x} = {2, 1}

IO.puts(y) # Resposta Esperada 2
IO.puts(x) # Resposta Esperada 1

^x = 2
IO.puts(x) # Resposta Esperada ** (MatchError) no match of right hand side value: 2

# Quando o valor de uma variável não tem importancia utilizamos _ (sublinhado)

[head | _] = [1, 2, 3]
IO.inspect(head) # Resposta Esperada 1
# neste caso não podemos utilizar o tail (não pode ser lido)
