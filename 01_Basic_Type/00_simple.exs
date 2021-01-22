# ==== Tipos de Variáveis ============
# 1 - integer
# 0x1F - integer
# 1.0 - float
# true / false boolean
# :umvalor atom / symbol
# "elixir" - string
# [1, 2, 3] - list
# {1, 2, 3} - tuple

# Imprimir
IO.puts "PRIMEIRO PROGRAMA EM ELIXIR"

inteiro = 10
IO.puts("Um inteiro - #{inteiro}")

float = 1.99
IO.puts("Um float - #{float}")

boleano = true
IO.puts("Um boleano #{boleano}")

:UmAtom
IO.puts("Um atom #{:UmAtom}")

lista = [1, 2, 3]
IO.puts(Enum.at(lista, 2)) # Imprime o 3 elemento da lista

tupla = {1, 2, 3}
IO.puts(elem(tupla, 0)) # Imprime o 1 elemento da tupla
