class CreateMeals < ActiveRecord::Migration
  def change
    create_table :meals do |t|
      t.string :food
      t.integer :dog_id
      t.string :start_time
      t.string :end_time

      t.timestamps null: false
    end
  end
end
