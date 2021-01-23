# Um binário é um bitstring onde o número de bits é divisível por 8.
# Isso significa que todo binário é um bitstring, mas nem todo bitstring é um binário.

IO.puts(is_bitstring(<<3::4>>)) # Resposta Esperada true
IO.puts(is_binary(<<3::4>>)) # Resposta Esperada false

IO.puts(is_bitstring(<<0, 255, 42>>)) # Resposta Esperada true
IO.puts(is_binary(<<0, 255, 42>>)) # Resposta Esperada true
IO.puts(is_binary(<<42::16>>)) # Resposta Esperada true

# Correspondência de padrões em binários / bitstrings:
<<0, 1, x>> = <<0, 1, 2>>
IO.puts(x) # Resposta Esperada 2

<<0, 1, x :: binary>> = <<0, 1, 2, 3>>
IO.inspect(x) # Resposta Esperada <<2, 3>>

<<head::binary-size(2), rest::binary>> = <<0, 1, 2, 3>>
IO.inspect(head) # Resposta Esperada <<0, 1>>
IO.inspect(rest) # Resposta Esperada <<2, 3>>

# O operador de concatenação de string <>é na verdade um operador de concatenação binário
IO.inspect("a" <> "ha") # Resposta Esperada "aha"
IO.inspect(<<0, 1>> <> <<2, 3>>) # Resposta Esperada <<0, 1, 2, 3>>

# Dado que as strings são binárias, também podemos combinar padrões em strings
<<head, rest::binary>> = "banana"
IO.inspect(head) # Resposta Esperada 98 (valor da letra b)
IO.inspect(rest) # Resposta Esperada "anana"

# Ao combinar padrões em strings, é importante usar o utf8modificador
<<x::utf8, rest::binary>> = "über"
IO.inspect(x) # Resposta Esperada 252 (valor da letra ü - u com a trema)
IO.inspect(rest) # Resposta Esperada "ber"
