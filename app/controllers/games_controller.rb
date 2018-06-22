class GamesController < ApplicationController
  # Add your GamesController code here

  def create
    @game = Game.new(state: params[:state].to_json)
    @game.save
    render json: @game, status: 200
  end


  def show
    @game = Game.find(params[:id])
    render 'home/index'
  end

  def index
    @games = Game.all
    render 'home/index'
  end

  def update
    @game = Game.find(params[:id])

    @game.update
    render 'home/index'
  end

end
