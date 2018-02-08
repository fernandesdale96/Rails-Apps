class AddCorrectIndexToUser < ActiveRecord::Migration[5.0]
  def change
    remove_index :users, name: 'index_users_on_username'
    add_index :users, [:username, :email], unique: true
  end
end
