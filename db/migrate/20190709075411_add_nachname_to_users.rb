class AddNachnameToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :nachname, :text
  end
end
