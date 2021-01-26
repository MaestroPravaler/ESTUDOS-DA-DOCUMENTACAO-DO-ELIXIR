# Podemos escrever processos com loop infinito, manter o estado e enviar e receber mensagens.
# Como exemplo, vamos escrever um módulo que inicia novos processos que funcionam como um
# armazenamento de valor-chave em um arquivo chamado kv.exs (Arquivo no diretorio)

defmodule KV do
  def start_link do
    Task.start_link(fn -> loop(%{}) end)
  end

  defp loop(map) do
    receive do
      {:get, key, caller} ->
        send caller, Map.get(map, key)
        loop(map)
      {:put, key, value} ->
        loop(Map.put(map, key, value))
    end
  end
end

# Observe que a start_linkfunção inicia um novo processo que executa a loop/1 função, começando
#  com um mapa vazio. A loop/1 função (privada) então espera por mensagens e executa a ação
# apropriada para cada mensagem. Tornamos loop/1privado usando em defpvez de def. No caso de
# uma :getmensagem, ele envia uma mensagem de volta para o chamador e liga loop/1novamente,
# para aguardar uma nova mensagem. Enquanto a :putmensagem realmente invoca loop/1com uma nova
# versão do mapa, com o dado key e value armazenado.

# Execute o arquivo (se econtra neste mesmo diretório)
iex> {:ok, pid} = KV.start_link
{:ok, #PID<0.62.0>}
iex> send pid, {:get, :hello, self()}
{:get, :hello, #PID<0.41.0>}
iex> flush()
nil
:ok

# No início, o mapa do processo não tem chaves, portanto, o envio de uma :getmensagem e a
# liberação da caixa de entrada do processo atual retorna nil. Vamos enviar uma :putmensagem e
# tentar novamente:
iex> send pid, {:put, :hello, :world}
{:put, :hello, :world}
iex> send pid, {:get, :hello, self()}
{:get, :hello, #PID<0.41.0>}
iex> flush()
:world
:ok

# Observe como o processo está mantendo um estado e podemos obter e atualizar esse estado
# enviando as mensagens do processo. Na verdade, qualquer processo que conheça o pidacima será
# capaz de enviar mensagens e manipular o estado.

# Também é possível registrar o pid, dando-lhe um nome, e permitindo que qualquer pessoa que
# saiba o nome lhe envie mensagens:
iex> Process.register(pid, :kv)
true
iex> send :kv, {:get, :hello, self()}
{:get, :hello, #PID<0.41.0>}
iex> flush()
:world
:ok

# O uso de processos para manter o estado e o registro do nome são padrões muito comuns em
# aplicativos Elixir. No entanto, na maioria das vezes, não implementaremos esses padrões
# manualmente como acima, mas usando uma das muitas abstrações que acompanham o Elixir. Por
# exemplo, Elixir fornece agentes , que são abstrações simples em torno do estado:
iex> {:ok, pid} = Agent.start_link(fn -> %{} end)
{:ok, #PID<0.72.0>}
iex> Agent.update(pid, fn map -> Map.put(map, :hello, :world) end)
:ok
iex> Agent.get(pid, fn map -> Map.get(map, :hello) end)
:world
