class AddScoreplayer2ToMatches < ActiveRecord::Migration[5.2]
  def change
    add_column :matches, :scoreplayer2, :int
  end
end
