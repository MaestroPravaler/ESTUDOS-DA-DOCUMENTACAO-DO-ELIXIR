defmodule GameTeste.Game.Actions.Heal do
  alias GameTeste.Game, as: GM
  alias GameTeste.Game.Status, as: ST
  @heal_power 18..25

  def heal_life(player) do
    player
    |> GM.fetch_player() # pegar o jogador
    |> Map.get(:life) #peguei a vida do player
    |> calculate_total_life()
    |> set_life(player) # Setar o Player que temos que calcular sua vida
  end

  defp calculate_total_life(life), do: Enum.random(@heal_power) + life

  defp set_life(life, player) when life > 100, do: update_player_life(player, 100)
  defp set_life(life, player), do: update_player_life(player, life)

  defp update_player_life(player, life) do
    player
    |> GM.fetch_player() # pegar o jogador
    |> Map.put(:life, life) # atualizar a vida que recebi como parâmetro
    |> update_game(player, life)
  end

  defp update_game(player_data, player, life) do
    GM.info()
    |> Map.put(player, player_data)
    |> GM.update()

    ST.print_move_message(player, :heal, life)
  end
end
