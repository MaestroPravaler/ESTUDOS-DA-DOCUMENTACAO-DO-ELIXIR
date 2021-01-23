# Um bitstring é um tipo de dados fundamental no Elixir, denotado com a <<>>sintaxe.
# Um bitstring é uma sequência contígua de bits na memória.

IO.inspect(<<42>> === <<42::8>>) # Resposta Esperada true

IO.inspect(<<3::4>>) # Resposta Esperada <<3::size(4)>>

# o número decimal 3 quando representado com 4 bits de base 2 poderia ser 0011,
# o que é equivalente para os valores 0, 0, 1, 1, cada um armazenado utilizando 1 bit:

IO.inspect(<<0::1, 0::1, 1::1, 1::1>> == <<3::4>>) # Resposta Esperada true
