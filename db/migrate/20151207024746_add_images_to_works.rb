class AddImagesToWorks < ActiveRecord::Migration
  def change
    add_column :works, :image_uid, :string
    add_column :works, :image_name, :string
  end
end
