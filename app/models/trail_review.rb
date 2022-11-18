class Trail_Review < ApplicationRecord
    belongs_to :user
    belongs_to :trails
end