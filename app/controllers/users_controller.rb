class UsersController < ApplicationController

def show
  @user = User.find(params[:id])
  @my_matches = Match.all
  #@my_matches_days = @matches.group_by {|match| match.created_at.to_date }
  @player1 = current_user
  @player1_matches = Match.all.select {|match| match.player1 = current_user.id}
  @player1score = @player1_matches
end



end
