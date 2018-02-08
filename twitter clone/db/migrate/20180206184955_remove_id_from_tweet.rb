class RemoveIdFromTweet < ActiveRecord::Migration[5.0]
  def change
    remove_column :tweets, :user_id
    remove_column :sessions, :user_id
  end
end
