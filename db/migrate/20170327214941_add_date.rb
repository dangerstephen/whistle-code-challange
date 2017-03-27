class AddDate < ActiveRecord::Migration
  def change
    add_column :meals, :date, :string
    add_column :walks, :date, :string
  end
end
