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
    @score = Score.new(point_value: params[:point_value], username: params[:username])
    @score.save
    render json: @score
  end

  def topten
    @scores = Score.all
    top_ten_list = @scores.sort_by do |score|
      score.point_value.to_i
    end.reverse.first(10)

    render json: top_ten_list
  end
end
