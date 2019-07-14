class ChangePhoneToBeStringInCustomers < ActiveRecord::Migration[5.2]
  def change
    change_column :matches, :player1, 'integer USING CAST(player1 AS integer)'
    change_column :matches, :player2, 'integer USING CAST(player2 AS integer)'

  end
end
