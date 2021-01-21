defmodule GameTeste.Game.Actions do
  alias GameTeste.Game, as: GM
  alias GameTeste.Game.Actions.Attack, as: AT
  alias GameTeste.Game.Actions.Heal, as: HL

  def fetch_move(move) do
    GM.player()
    |> Map.get(:moves)
    |> find_move(move)
  end

  defp find_move(moves, move) do
    Enum.find_value(moves, {:error, move}, fn {key, value} ->
      if value == move, do: {:ok, key}
    end)
  end

  def attack(move) do
    case GM.turn() do
      :player -> AT.attack_opponent(:computer, move)
      :computer -> AT.attack_opponent(:player, move)
    end
  end

  def heal() do
    case GM.turn() do
      :player -> HL.heal_life(:player)
      :computer -> HL.heal_life(:computer)
    end
  end
end
