class GamesController < ApplicationController
  def index
    @allUsers = User.all
  end

  def about
  end

  def myMatches
    @matches = Match.all.where("player1 = ? or player2 = ?", current_user.id, current_user.id).order('created_at DESC')
  end


end
