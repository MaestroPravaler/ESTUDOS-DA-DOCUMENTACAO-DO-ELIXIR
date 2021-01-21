defmodule GameTeste do
  alias GameTeste.Game, as: GM
  alias GameTeste.Game.Actions, as: ACT
  alias GameTeste.Game.Status, as: ST
  alias GameTeste.Player, as: GP

  @computer_name "Computer"
  @computer_moves [:move_avg, :move_rnd, :move_heal]

  def create_player(name, move_avg, move_rnd, move_heal) do
    GP.build(name, move_avg, move_rnd, move_heal)
  end

  def start_game(player)do
    @computer_name
    |> create_player(:punch, :kick, :heal)
    |> GM.start(player)

    ST.print_round_message(GM.info())
  end

  def make_move(move) do
    #verificar se o jogo esta em game_over
    GM.info()
    |> Map.get(:status)
    |> handle_status(move)
  end

  defp handle_status(:game_over, _move), do: ST.print_round_message(GM.info())
  defp handle_status(_other, move) do
    move
    |> ACT.fetch_move()
    |> do_move()

    computer_move(GM.info())
  end

  defp do_move({:error, move}), do: ST.print_wrong_move_message(move)
  defp do_move({:ok, move})do
    case move do
      :move_heal -> ACT.heal()
      move -> ACT.attack(move)
    end
    ST.print_round_message(GM.info())
  end

  defp computer_move(%{turn: :computer, status: :continue}) do
    move = {:ok, Enum.random(@computer_moves)}
    do_move(move)
  end

  defp computer_move(_), do: :ok

end
