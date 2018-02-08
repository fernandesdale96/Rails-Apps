class AddColumsToSession < ActiveRecord::Migration[5.0]
  def change
    create_table :sessions do |t|
      t.string :token
      t.string :user_id

      t.timestamps
    end
  end
end
