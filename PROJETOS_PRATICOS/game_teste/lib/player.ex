defmodule GameTeste.Player do
    #Variáveis de módulo (constante)
    #Como boa prática deixar todas as variáveis em ordem alfabética
    @max_life 100 # Máximo de vida
    @required_keys [:life, :moves, :name] #chaves da nossa struct

    @enforce_keys @required_keys # Define as chaves obrigatórias
    defstruct @required_keys # Criando uma Struct
        def build(name, move_rnd, move_avg, move_heal) do
        %GameTeste.Player{
            life: @max_life,
            name: name,
            moves: %{
                move_avg: move_avg,
                move_heal: move_heal,
                move_rnd: move_rnd
            }
        }
    end
end
