class RemoveTrailListFromUser < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :trail_list
  end
end
