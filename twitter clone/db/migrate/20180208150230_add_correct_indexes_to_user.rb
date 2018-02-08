class AddCorrectIndexesToUser < ActiveRecord::Migration[5.0]
  def change
    remove_index :users, name: 'index_users_on_username_and_email'
    add_index :users, :username, unique: true
    add_index :users, :email, unique: true
  end
end
