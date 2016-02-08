class TeamsController < ApplicationController
  def index
    respond_with teams
  end

  def create
    respond_with(game, teams.create(team_params))
  end

  def update
    if team.award!(params[:points])
      respond_with team
    else
      render json: { error: 'Positive points amount required' }, status: 412
    end
  end

  protected

  def game
    @game ||= Game.find(params[:game_id])
  end

  def teams
    @teams ||= game.teams
  end

  def team
    @team ||= teams.find(params[:id])
  end

  def team_params
    params.require(:team).permit(:name, :password)
  end
end
