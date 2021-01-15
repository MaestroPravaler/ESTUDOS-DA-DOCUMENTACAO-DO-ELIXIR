# Estudos da Documentação 
![https://elixir-lang.org/](assets/image/logo.png)

### [1. Basic types](01_BasicType/) 
* Basic arithmetic
* Identifying functions and documentation
* Booleans
* Atoms
* Strings
* Anonymous functions
* (Linked) Lists
* Tuples
* Lists or tuples?
### [2. Basic operators](02_Basic_Operators)
### [3. Pattern matching]()
### [4. case, cond, and if]()
### [5. Binaries, strings, and charlists]()
### [6. Keyword lists and maps]()
### [7. Modules and Functions]()
### [8. Recursion]()
### [9. Enumerables and streams]()
### [10. Processes]()
### [11. IO and the file system]()
### [12. alias, require, and import]()
### [13. Module attributes]()
### [14. Structs]()
### [15. Protocols]()
### [16. Comprehensions]()
### [17. Sigils]()
### [18. try, catch, and rescue]()
### [19. Typespecs and behaviours]()
### [20. Debugging]()
### [21. Erlang libraries]()
### [22. PROJETOS PRÁTICOS]()
Criação de um projeto em Elixir
```
mix new "nomedoprojeto"
```
Compilação do projeto
```
mix compile
```
Execução dos Textes
```
mix text
```
Compilar e rodar o projeto dentro do iex()>

No diretório do projeto Rodar o comando:
```
iex -S mix
```
#### Projeto 01 (FizzBuzz)
Situação Problema:
* Múltiplos de 3 trocar pela String Fizz
* Múltiplos de 5 trocar pela String Buzz
* Múltiplos de 3 e 5 trocar pela string FizzBuzz