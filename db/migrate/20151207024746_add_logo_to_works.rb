class AddLogoToWorks < ActiveRecord::Migration
  def change
    add_column :works, :logo_uid, :string
    add_column :works, :logo_name, :string
  end
end
