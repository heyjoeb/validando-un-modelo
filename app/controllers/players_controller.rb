class PlayersController < ApplicationController
  def new
  	@player = Player.new
  end

  def create
  	@player = Player.new(player_params)

  	
  	if @player.valid?
      @player.save
      flash[:notice] = "Player successfully created"
      redirect_to "/players/new"
    else
      render "players/new"  
    end
  end

  private
  def player_params
  	params.require(:player).permit(:email, :name, :username, :points, :active)
  end
end
