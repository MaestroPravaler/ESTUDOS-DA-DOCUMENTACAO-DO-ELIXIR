# Atoms é uma constante cujo valor é seu próprio nome.
# não precisa dos : no inicio (true, false, nil)
# Aliases são uma construção onde a palavra começa em maiúscula

IO.puts(is_atom(Marcelo))
IO.puts(is_atom(true))
IO.puts(is_atom(false))
IO.puts(is_atom(nil))

# Podemos igualmente utilizar os dois pontos
IO.puts(is_atom(:Marcelo))
IO.puts(is_atom(:true))
IO.puts(is_atom(:false))
IO.puts(is_atom(:nil))

# Começando com minúscula não é um atom
# neste caso é uma string que deve ser colocada entre aspas.
# Caso contrário exibirá uma mensagem de erro porque a variável marcelo não existe
IO.puts(is_atom("marcelo"))
