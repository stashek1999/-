class CreatePositionsUsersJoinTable < ActiveRecord::Migration[5.2]
  def change
    create_table :positions_users, id: false do |t|
      t.integer :user_id
      t.integer :position_id
    end
    add_index :positions_users, :user_id
    add_index :positions_users, :position_id
  end
end
