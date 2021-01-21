defmodule GameTesteTest do
  use ExUnit.Case
  import ExUnit.CaptureIO

  alias GameTeste.Player

  describe "create_player/4" do
    test "Returns a player" do
      create_player_response = %Player{
        life: 100,
        moves: %{move_avg: :soco, move_heal: :vida, move_rnd: :chute},
        name: "Robson"
      }
      assert create_player_response == GameTeste.create_player("Robson", :chute, :soco, :vida)
    end
  end

  describe "start_game/1" do
    test "when game is started, returns a message" do
      player = Player.build("Robson", :chute, :soco, :vida)

      messages =
        capture_io(fn ->
          assert GameTeste.start_game(player) == :ok
        end)
      # Retorno é muito grande então:
      # Buscar trechos da string que validariam o teste
      assert messages =~ "The Game is Started!"
      assert messages =~ "turn: :player"
      assert messages =~ "status: :started"
    end
  end

  describe "make_move/1" do
    setup %{} do
      player = Player.build("Robson", :chute, :soco, :vida)

      capture_io(fn ->
        GameTeste.start_game(player) # Inicia o jogo aqui para não poluir o resultado do teste
      end)

      :ok # Necessário pois é requisito que o setup seja verdadeiro
    end
    test "when the move is valid, do the move and the computer makes a move" do
      messages =
        capture_io(fn ->
          assert GameTeste.make_move(:chute)
        end)

        assert messages =~ "The Player Attack Computer"
        assert messages =~ "It's computer turn"
        assert messages =~ "status: :continue"

    end

    test "when the move is invalid, returns an error messages" do
      messages =
        capture_io(fn ->
          assert GameTeste.make_move(:movimentonaoexiste)
        end)

      assert messages =~ "Invalid Move movimentonaoexiste"
    end

  end
end
