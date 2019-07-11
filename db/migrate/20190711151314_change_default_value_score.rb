class ChangeDefaultValueScore < ActiveRecord::Migration[5.2]
  def change
    change_column :users, :score, :int, default: 1000
  end
end
