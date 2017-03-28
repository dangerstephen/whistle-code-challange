class AddImageToDogs < ActiveRecord::Migration
  def change
    add_column :dogs, :image_src, :string
    add_column :dogs, :bio, :string
  end
end
