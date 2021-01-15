defmodule Fizzbuzz do
  # Função para receber arquivo_leitura.txt
  # UTILIZANDO: Pattern Matching e Pipe Operator
  def build(file_name) do
    file_name 
    |> File.read() # Recebe file_name como 01 argumento
    |> handle_file_read() # Retorno da função
  end
  
  # ===================================================================
  # CASO 01 - Quando consegue ler o arquivo
  # Trata os elementos da lista e prepara para substituição
  defp handle_file_read({:ok, result}) do
    result
    |> String.split(",") #Recebe o result(01 argumento) e quebra onde tem vírgual
    |> Enum.map(&convert_numbers/1) # Chama a função convert_numbers
  end
  # =============================================================================
  # CASO 02 - Não consegue abrir o arquivo
  # Mensagem de erro para o usuário
  defp handle_file_read({:error, reason}), do: "Error reading the file: #{reason}"

  defp convert_numbers(elements) do
    elements
    |> String.to_integer() # Convert os dados tratados para inteiro
    |> evaluate_numbers() # Chama a função evaluate_numbers
  end

  # UTILIZANDO Gards (when)
  # Realizando as substituições na lista
  defp evaluate_numbers(numbers) when rem(numbers, 3) == 0 and rem(numbers, 5) == 0, do: :fizzbuzz
  defp evaluate_numbers(numbers) when rem(numbers, 3) == 0, do: :fizz
  defp evaluate_numbers(numbers) when rem(numbers, 5) == 0, do: :buzz
  defp evaluate_numbers(numbers), do: numbers
  
end
