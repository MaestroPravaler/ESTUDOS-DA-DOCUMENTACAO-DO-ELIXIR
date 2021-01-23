# Estrutura aninhadas são maps dentro de maps ou listas dentro de maps, etc...
users = [
  john: %{name: "John", age: 27, languages: ["Erlang", "Ruby", "Elixir"]},
  mary: %{name: "Mary", age: 29, languages: ["Elixir", "F#", "Clojure"]}
]
[john: %{age: 27, languages: ["Erlang", "Ruby", "Elixir"], name: "John"},
 mary: %{age: 29, languages: ["Elixir", "F#", "Clojure"], name: "Mary"}]

 # Acesso aos dados
 IO.inspect(users[:john].age) # Resposta Esperada 27
 IO.inspect(users[:john].name) # Resposta Esperada "John"
 IO.inspect(users[:john].languages) # Resposta Esperada ["Erlang", "Ruby", "Elixir"]

 # Atualização de um valor (utiliza a mesma sintaxe acima)
 users = put_in users[:john].age, 31
 IO.inspect(users[:john].age) # Resposta Esperada 31

 # Update nos permite passar uma função que controla como o valor muda
 users = update_in users[:john].languages, fn languages -> List.delete(languages, "Elixir") end
 IO.inspect(users[:john].languages) # Resposta Esperada ["Erlang", "Ruby"] deletamos o Elixir
