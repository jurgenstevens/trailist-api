class Trail < ApplicationRecord
    belongs_to :user
    validates :trail_name, presence: true
    has_many :trail_reviews
end