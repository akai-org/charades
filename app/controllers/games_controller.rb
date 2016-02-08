class GamesController < ApplicationController
  def index
    respond_with Game.all
  end

  def show
    respond_with Game.find(params[:id])
  end

  def create
    respond_with Game.create(game_params)
  end

  protected

  def game_params
    params
      .require(:game)
      .permit(:duration, :round_count)
  end
end
