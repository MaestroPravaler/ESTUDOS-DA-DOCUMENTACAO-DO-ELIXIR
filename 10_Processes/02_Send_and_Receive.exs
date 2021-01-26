# Podemos enviar mensagens para um processo com send/2 e recebê-las com receive/1
send self(), {:hello, "world"}
receive do
  {:hello, msg} -> msg
  {:world, _msg} -> "won't match"
end
#=> "world"

# Passando mensagens entre os processos:
parent = self() #=> #PID<0.41.0>
spawn fn -> send(parent, {:hello, self()}) end #=> #PID<0.48.0>
receive do
  {:hello, pid} -> "Got hello from #{inspect pid}"
end
#=> "Got hello from #PID<0.48.0>"

# O Utilitario flush imprime todas as mensagens na mailbox
send self(), :hello #=> :hello
flush()
#=> :hello
#=> :ok
