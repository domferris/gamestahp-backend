class HighScoreController < ApplicationController
  def index
    @high_scores = HighScore.all
  end

  def create
    @game = Game.find_by(title: high_score_params[:game_title])
    @high_score = HighScore.new(high_score_params.except(:game_title))
    @high_score.game = @game

    if @high_score.save
      render json: @high_score
    else
      render json: { message: "could not be saved" }, status: 400
    end
  end

  private

  def high_score_params
    params.require(:high_score).permit(:score, :player, :game_title)
  end
end
