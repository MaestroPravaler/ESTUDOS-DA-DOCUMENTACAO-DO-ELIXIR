# Elixir usa chaves para definir tuplas. Como as listas, as tuplas podem conter qualquer valor

tupla = {:ok, "Isto é uma tupla"}

# Imprimir um elemento da tupla
IO.puts(elem(tupla, 1))

# Tamanho da tupla
IO.puts("Esta tupla possue #{tuple_size(tupla)} elementos.")

# Colocar um elemento em um índice específico
tupla_mudada = put_elem(tupla, 1, "Mudei")
IO.inspect tupla_mudada, label: "Este é o resultado da tupla mudada "
