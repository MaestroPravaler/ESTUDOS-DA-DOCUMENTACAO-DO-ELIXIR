# Na maioria das vezes, geramos processos no Elixir, nós os geramos como processos vinculados.
# Antes de mostrar um exemplo com spawn_link/1, vamos ver o que acontece quando um processo
# iniciado com spawn/1 falha:

spawn fn -> raise "oops" end
#PID<0.58.0>

[error] Process #PID<0.58.00> raised an exception
** (RuntimeError) oops
    (stdlib) erl_eval.erl:668: :erl_eval.do_apply/6

# Ele simplesmente registrou um erro, mas o processo pai ainda está em execução. Isso porque
# os processos são isolados. Se quisermos que a falha de um processo se propague para outro,
# devemos vinculá-los. Isso pode ser feito com spawn_link/1:

self()
#PID<0.41.0>
spawn_link fn -> raise "oops" end

** (EXIT from #PID<0.41.0>) evaluator process exited with reason: an exception was raised:
    ** (RuntimeError) oops
        (stdlib) erl_eval.erl:668: :erl_eval.do_apply/6

[error] Process #PID<0.289.0> raised an exception
** (RuntimeError) oops
    (stdlib) erl_eval.erl:668: :erl_eval.do_apply/6

# Como os processos estão vinculados, agora vemos uma mensagem dizendo que o processo pai,
# que é o processo do shell, recebeu um sinal EXIT de outro processo, causando o encerramento
# do shell. O IEx detecta essa situação e inicia uma nova sessão de shell.

# Enquanto outras linguagens exigiriam que capturássemos / tratássemos exceções, no Elixir não
# temos problemas em deixar os processos falharem porque esperamos que os supervisores
# reiniciem nossos sistemas de maneira adequada. “Falha rápida” é uma filosofia comum ao
# escrever o software Elixir!
