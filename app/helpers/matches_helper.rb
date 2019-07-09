module MatchesHelper

  def win_or_lose(match)
    player1 = User.find(match.player1)
    player2 = User.find(match.player2)

    if player1 == current_user
        if match.scoreplayer1 < match.scoreplayer2
          wonmatch = 'Win'
        elsif match.scoreplayer1 > match.scoreplayer2
          wonmatch = 'Lose'
        else
          wonmatch = 'Draw'
        end
    elsif player2 == current_user
        if match.scoreplayer2 > match.scoreplayer1
          wonmatch = 'Win'
        elsif match.scoreplayer2 < match.scoreplayer1
          wonmatch = 'Lose'
        else
          wonmatch = 'Draw'
        end
    end
  end

  def count_score(matches)
  end

  def count_wins(matches)
  end

  def count_loses(matches)
  end


end
