class CreateWalks < ActiveRecord::Migration
  def change
    create_table :walks do |t|
      t.string :location
      t.integer :dog_id
      t.string :start_time
      t.string :end_time

      t.timestamps null: false
    end
  end
end
