class AddWonmatchesToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :won_matches, :int, :default => 0
  end
end
