class FixColumnInSession < ActiveRecord::Migration[5.0]
  def change
    change_column :sessions, :user_id, :integer
  end
end
