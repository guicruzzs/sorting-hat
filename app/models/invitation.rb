class Invitation < ApplicationRecord
  validates :email, presence: true, uniqueness: true
end
