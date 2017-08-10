class Rating < ApplicationRecord
  belongs_to :track
  belongs_to :user

  validates :user_id, presence: true
  validates :track_id, presence: true, uniqueness: {:scope => :user_id}
  validates :score, presence: true, inclusion: { in: 1..5 }
end
