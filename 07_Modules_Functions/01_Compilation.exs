# Na maioria das vezes, é conveniente escrever módulos em arquivos para que possam
# ser compilados e reutilizados. Vamos supor que temos um arquivo denominado math.ex
# com o seguinte conteúdo

defmodule Math do
  def sum(a, b) do
    a + b
  end
end

# Este arquivo pode ser compilado usando elixirc
# $ elixirc math.ex

# Isso irá gerar um arquivo denominado Elixir.Math.beam contendo o bytecode para o módulo
# definido. Se começarmos iex novamente, nossa definição de módulo estará disponível
# (desde que iex seja iniciado no mesmo diretório em que o arquivo bytecode está)
# iex> Math.sum(1, 2) Resposta Espera 3

# Os projetos Elixir são geralmente organizados em três diretórios:
# 1. ebin - contém o bytecode compilado
# 2. lib - contém o código elixir (geralmente .exarquivos)
# 3. teste - contém testes (geralmente .exsarquivos)

# Ao trabalhar em projetos reais, a ferramenta de construção chamada mix será responsável
# por compilar e configurar os caminhos adequados para você. Para fins de aprendizagem,
# Elixir também suporta um modo de script que é mais flexível e não gera nenhum artefatos compilados.
