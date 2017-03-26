class CreateMeals < ActiveRecord::Migration
  def change
    create_table :meals do |t|
      t.string :food
      t.integer :dog_id
      t.datetime :start_time
      t.datetime :end_time

      t.timestamps null: false
    end
  end
end
