class UsersController < ApplicationController

def show
  @user = User.find(params[:id])
  @my_matches = Match.all
  #@my_matches_days = @matches.group_by {|match| match.created_at.to_date }
  #@player1 = current_user
  #@player1_matches = Match.all.select {|match| match.player1 = @user.id}
  #@player2_matches = Match.all.select {|match| match.player2 = @user.id}
  #@users_matches = @player1_matches + @player2_matches

  opponent = []
  @my_matches.each do |match|

      player1 = User.find(match.player1)
      player2 = User.find(match.player2)

      if (@user != player1) && (@user == player2)
        opponent.push(player1.id)
      end

      if (@user != player2) && (@user == player1)
        opponent.push(player2.id)
      end
  end

  opponent_matches = opponent.inject(Hash.new(0)) { |total, e| total[e] += 1 ;total}
  opponent_matches = opponent_matches.sort_by { |id, matches| matches }.reverse

  @player1_matches = Match.where({ player1: "4", player2: @user.id })



end



end
