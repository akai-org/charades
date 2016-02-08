class RoundsController < ApplicationController
  def show
    respond_with game.current_round
  end

  def update
    game.current_round.update(winner: team(params[:winner]))

    if !game.finished? && game.rounds.count < game.round_count
      game.rounds.create
      respond_with game, status: :created
    else
      game.finish!
      respond_with game, status: :gone
    end
  end

  private

  def game
    @game ||= Game.find(params[:game_id])
  end

  def team(id)
    @team ||= game.teams.find(id)
  end
end
