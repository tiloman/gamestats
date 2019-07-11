class UsersController < ApplicationController

def show
  @user = User.find(params[:id])
  @my_matches = Match.all.where("player1 = ? or player2 = ?", @user.id,@user.id ).order('created_at DESC')
  #@my_matches_days = @matches.group_by {|match| match.created_at.to_date }
end



end
