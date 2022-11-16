class CreateTrailReviewUpdateTrail < ActiveRecord::Migration[7.0]
  def change
    create_table :trail_reviews do |t|
      t.integer :user_id
      t.integer :trail_id
      t.string :review
      t.integer :rating
    end
    add_column :trails, :trail_reviews, :integer
    remove_column :trails, :updated_at
  end
end
