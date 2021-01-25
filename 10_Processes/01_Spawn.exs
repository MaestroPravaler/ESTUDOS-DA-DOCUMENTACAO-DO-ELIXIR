# O mecanismo básico para gerar novos processos é a spawn/1 função de importação automática
spawn fn -> 1 + 2 end #=> #PID<0.43.0>

# spawn/1 assume uma função que será executada em outro processo.

# O aviso spawn/1 retorna um PID (identificador de processo). Neste ponto, o processo que você
# gerou provavelmente está morto. O processo gerado irá executar a função dada e sair após a
# função ser concluída:
pid = spawn fn -> 1 + 2 end #=> #PID<0.44.0>
Process.alive?(pid) #=> false

# Podemos recuperar o PID do processo atual chamando self/0
self() #=> #PID<0.41.0>
Process.alive?(self()) #=> true
