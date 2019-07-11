class GamesController < ApplicationController
  def index
    @allUsers = User.all
  end

  def about
  end

  def ranking
    @allUsers = User.all.order('score DESC')
  end

  def myMatches
    @matches = Match.all.order('created_at DESC')
    @matches_days = @matches.group_by {|match| match.created_at.to_date }

  end


end
