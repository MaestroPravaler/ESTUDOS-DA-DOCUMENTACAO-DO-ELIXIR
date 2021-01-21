# GameTeste

## 1. Instalar / Configurar a dependência do [CREDO](https://github.com/rrrene/credo)
* No Arquivo mix.exs (Raiz do Projeto) adicionar a ultima versão (olhar no site do github - link acima).
```
defp deps do
  [
    {:credo, "~> 1.5", only: [:dev, :test], runtime: false}
  ]
end
```
* No terminal (diretório do projeto) rodar o comando
```
mix deps.get
```
* Criar o arquivo .credo.exs no diretório raiz do seu projeto e copiar o conteúdo do arquivo de mesmo nome existente no github. (Este é o arquivo de configurações do credo e podemos com ele personalizar as verificações.)

Personalizações sugeridas:

{Credo.Check.Readability.ModuleDoc, false} - Linha 101 - Não escreveremos documentação por ser um projeto pessoal de estudos.

strict: true - Linha 49 - o CREDO fica mais restrito obrigando a escrita de código de melhor qualidade - é nosso objetivo.


Rodar o utilitário:
```
mix credo
```

## 2. Estruturas de arquivos
* game_test.ex (Módulo Principal)
* player.ex (struct do player)
* game.ex (Agent do game)
* game/status.ex (Imprimir o status do jogo para o usuário)
* game/actions.ex (Ações do Jogador)
* game/actions/attack.ex (Ataques do jogador)
* game/actions/heal.ex (Movimento de cura do jogador)

## 3. Testes dos módulos
Todos os testes se encontram na pasta test.

Por boas práticas testamos todos os módulos públicos da nossa aplicação.
* Módulo Game - game_test.exs
* Módulo Principal - game_testes_test.exs

## 4. Agradecimentos

### [Rafael F. Camarda](https://github.com/RafaelCamarda/curso_elixir_phoenix_do_zero)


