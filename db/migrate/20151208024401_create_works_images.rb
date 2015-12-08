class CreateWorksImages < ActiveRecord::Migration
  def change
    create_table :works_images do |t|
      t.references :work, index: true, foreign_key: true
      t.string :image_uid
      t.string :image_name

      t.timestamps null: false
    end
  end
end
