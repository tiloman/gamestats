class AddLostmatchesToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :lost_matches, :int, :default => 0
  end
end
