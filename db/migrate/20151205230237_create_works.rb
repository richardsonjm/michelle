class CreateWorks < ActiveRecord::Migration
  def change
    create_table :works do |t|
      t.string :client
      t.string :campaign
      t.text :challange
      t.text :insight
      t.text :outcome
      t.text :results

      t.timestamps null: false
    end
  end
end
