defmodule Gameteste.GameTest do
  use ExUnit.Case

  alias GameTeste.{Game, Player}

  describe "start/2" do
    test "start the game state" do
      player = Player.build("Robson", :chute, :soco, :vida)
      computer = Player.build("Computador", :chute, :soco, :vida)

      assert {:ok, _pid} = Game.start(computer, player)
    end
  end

  describe "info/0" do
    test "return the current game state" do
      player = Player.build("Robson", :chute, :soco, :vida)
      computer = Player.build("Computador", :chute, :soco, :vida)

      Game.start(computer, player)

      expected_response = %{
        computer: %Player{
          life: 100,
          moves: %{move_avg: :soco, move_heal: :vida, move_rnd: :chute},
          name: "Computador"
        },
        player: %Player{
          life: 100,
          moves: %{move_avg: :soco, move_heal: :vida, move_rnd: :chute},
          name: "Robson"},
        status: :started,
        turn: :player
      }

      assert expected_response == Game.info()
    end
  end

  describe "update/1" do
    test "Return the game state updated" do
      player = Player.build("Robson", :chute, :soco, :vida)
      computer = Player.build("Computador", :chute, :soco, :vida)

      Game.start(computer, player)

      expected_response = %{
        computer: %Player{
          life: 100,
          moves: %{move_avg: :soco, move_heal: :vida, move_rnd: :chute},
          name: "Computador"
        },
        player: %Player{
          life: 100,
          moves: %{move_avg: :soco, move_heal: :vida, move_rnd: :chute},
          name: "Robson"},
        status: :started,
        turn: :player
      }

      assert expected_response == Game.info()

      new_state = %{
        computer: %Player{
          life: 73,
          moves: %{move_avg: :soco, move_heal: :vida, move_rnd: :chute},
          name: "Computador"
        },
        player: %Player{
          life: 87,
          moves: %{move_avg: :soco, move_heal: :vida, move_rnd: :chute},
          name: "Robson"},
        status: :started,
        turn: :player
      }

      Game.update(new_state)
      expected_response = %{new_state | turn: :computer, status: :continue}
      assert expected_response == Game.info()
    end
  end

  describe "player/0" do
    test "Returns the information of the player" do
      player = Player.build("Robson", :chute, :soco, :vida)
      computer = Player.build("Computador", :chute, :soco, :vida)

      Game.start(computer, player)

      player_response = %Player{
        life: 100,
        moves: %{move_avg: :soco, move_heal: :vida, move_rnd: :chute},
        name: "Robson"
      }

      assert player_response == Game.player()
    end
  end

  describe "turn/0" do
    test "Return o turn of game" do
      player = Player.build("Robson", :chute, :soco, :vida)
      computer = Player.build("Computador", :chute, :soco, :vida)

      Game.start(computer, player)

      turn_response = :player

      assert turn_response == Game.turn()
    end
  end
end
