class ChangeOutcomeToStrategy < ActiveRecord::Migration
  def change
    rename_column :works, :outcome, :strategy
  end
end
