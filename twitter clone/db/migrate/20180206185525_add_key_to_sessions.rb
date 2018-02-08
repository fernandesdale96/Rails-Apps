class AddKeyToSessions < ActiveRecord::Migration[5.0]
  def change
    add_reference :sessions, :user, foreign_key: true
    add_foreign_key :sessions, :users
  end
end
