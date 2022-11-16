class UpdateTrailAndUser < ActiveRecord::Migration[7.0]
  def change
    add_column :trails, :description, :string
    add_column :users, :trail_list, :integer
    remove_column :trails, :created_at
    remove_column :trails, :updated_at
  end
end
