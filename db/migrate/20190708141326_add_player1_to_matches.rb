class AddPlayer1ToMatches < ActiveRecord::Migration[5.2]
  def change
    add_column :matches, :player1, :text
  end
end
