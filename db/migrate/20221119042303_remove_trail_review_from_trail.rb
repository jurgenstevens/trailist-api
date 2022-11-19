class RemoveTrailReviewFromTrail < ActiveRecord::Migration[7.0]
  def change
    remove_column :trails, :trail_reviews
  end
end
