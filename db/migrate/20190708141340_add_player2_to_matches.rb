class AddPlayer2ToMatches < ActiveRecord::Migration[5.2]
  def change
    add_column :matches, :player2, :text
  end
end
