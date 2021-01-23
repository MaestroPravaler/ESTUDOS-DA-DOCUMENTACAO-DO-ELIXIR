# Além da extensão de arquivo (.ex) Elixir, Elixir também oferece suporte
# a (.exs) arquivos para script. Elixir trata os dois arquivos exatamente da mesma forma,
# a única diferença está na intenção. (.ex) os arquivos devem ser compilados enquanto os
# (.exs) são usados ​​para scripts. Esta convenção é seguida por projetos como mix.

defmodule Math do
  def sum(a, b) do
    a + b
  end
end

IO.puts Math.sum(1, 2)

# Todos os arquivos desta playlist são (.exs) assim posso executa-los direto no vscode.
