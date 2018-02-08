class AddUserToTweet < ActiveRecord::Migration[5.0]
  def change
    add_reference :tweets, :user, foreign_key: true
    add_foreign_key :tweets, :users
  end
end
