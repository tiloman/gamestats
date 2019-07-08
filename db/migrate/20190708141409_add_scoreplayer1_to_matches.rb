class AddScoreplayer1ToMatches < ActiveRecord::Migration[5.2]
  def change
    add_column :matches, :scoreplayer1, :int
  end
end
