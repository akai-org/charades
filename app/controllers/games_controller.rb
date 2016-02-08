class GamesController < ApplicationController
  def index
    respond_with Game.all
  end

  def show
    respond_with game
  end

  def create
    respond_with Game.create(game_params)
  end

  def update
    respond_with game.start!
  end

  protected

  def game
    @game ||= Game.find(params[:id])
  end

  def game_params
    params
      .require(:game)
      .permit(:duration, :round_count)
  end
end
