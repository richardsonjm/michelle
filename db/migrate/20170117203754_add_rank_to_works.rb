class AddRankToWorks < ActiveRecord::Migration
  def change
    add_column :works, :rank, :integer, default: 0, null:false
    Work.reset_column_information
    Work.all.each_with_index do |work, index|
      work.update_attributes(rank: index + 1)
    end
  end
end
