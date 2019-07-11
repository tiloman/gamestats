class UsersController < ApplicationController

def show
  @user = User.find(params[:id])
  @my_matches = Match.all
  #@my_matches_days = @matches.group_by {|match| match.created_at.to_date }
end



end
