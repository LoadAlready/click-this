class Api::V1::ScoresController < ApplicationController
  def index
    @scores = Score.all
    render json: @scores
  end

  def show
    @score = Score.find(params[:id])
    render json: @score
  end

  def create
    @score = Score.new(point_value: params[:point_value], user_id: params[:user_id])
    @score.save
    render json: @score 
  end
end
