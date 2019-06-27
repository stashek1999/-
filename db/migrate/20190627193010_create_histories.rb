class CreateHistories < ActiveRecord::Migration[5.2]
  def change
    create_table :histories do |t|
      t.integer :user_id
      t.datetime :at_work
      t.datetime :not_at_work

      t.timestamps
    end
  end
end
