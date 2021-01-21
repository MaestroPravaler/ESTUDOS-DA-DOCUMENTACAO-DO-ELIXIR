defmodule Fizzbuzz do
  # Função para receber arquivo_leitura.txt
  # UTILIZANDO: Pattern Matching e Pipe Operator
  def build(file_name) do
    file_name
    # Recebe file_name como 01 argumento
    |> File.read()
    # Retorno da função
    |> handle_file_read()
  end

  # ===================================================================
  # CASO 01 - Quando consegue ler o arquivo
  # Trata os elementos da lista e prepara para substituição
  defp handle_file_read({:ok, result}) do
    result
    # Recebe o result(01 argumento) e quebra onde tem vírgual
    |> String.split(",")
    # Chama a função convert_numbers
    |> Enum.map(&convert_numbers/1)
  end

  # =============================================================================
  # CASO 02 - Não consegue abrir o arquivo
  # Mensagem de erro para o usuário
  defp handle_file_read({:error, reason}), do: "Error reading the file: #{reason}"

  defp convert_numbers(elements) do
    elements
    # Convert os dados tratados para inteiro
    |> String.to_integer()
    # Chama a função evaluate_numbers
    |> evaluate_numbers()
  end

  # UTILIZANDO Gards (when)
  # Realizando as substituições na lista
  defp evaluate_numbers(numbers) when rem(numbers, 3) == 0 and rem(numbers, 5) == 0, do: :fizzbuzz
  defp evaluate_numbers(numbers) when rem(numbers, 3) == 0, do: :fizz
  defp evaluate_numbers(numbers) when rem(numbers, 5) == 0, do: :buzz
  defp evaluate_numbers(numbers), do: numbers
end
