class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.datetime :start
      t.datetime :end
      t.boolean :allDay
      t.string :color
      t.integer :user_id
      t.integer :group_id
      t.boolean :common

      t.timestamps null: false
    end
  end
end
