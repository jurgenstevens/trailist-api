class User < ApplicationRecord
    has_many :trails
    has_many :trail_reviews
end