class CreateWalks < ActiveRecord::Migration
  def change
    create_table :walks do |t|
      t.string :location
      t.integer :dog_id
      t.datetime :start_time
      t.datetime :end_time

      t.timestamps null: false
    end
  end
end
