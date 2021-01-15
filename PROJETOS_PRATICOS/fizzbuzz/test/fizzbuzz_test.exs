defmodule FizzbuzzTest do
  use ExUnit.Case

  describe "build/1" do # Testamos sempre nossas funções públicas
    # Testar os cenários (temos 2 quando lemos ou não o arquivo)
    # CASO 01 - Quando conseguimos abrir o arquivo.
    test "when a valid file is provided, returns the converted list" do
      result_build = [:fizz, :fizz, 662, :fizz, :fizzbuzz, 751, :fizz, :buzz, :fizzbuzz, :fizzbuzz, :buzz, 17, :buzz, :buzz, :fizzbuzz, :fizz, 101, 68, 607, 652, 31, 181]
      assert Fizzbuzz.build("arquivo_leitura.txt") == result_build
    end

    # CASO 02 - Quando não conseguimos abrir o arquivo.
    test "when an invalid file is provided, returns the error message" do
      error_build = "Error reading the file: enoent"
      assert Fizzbuzz.build("arquivo_lei.txt") == error_build
    end

  end
end
