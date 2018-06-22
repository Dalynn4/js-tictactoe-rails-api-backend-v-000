class GamesController < ApplicationController
  # Add your GamesController code here

  def create
    @game = Game.new
    @game.save
    render 'home/index'
  end




end
