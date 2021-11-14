class Player < ApplicationRecord
  validates :name, presence: true, uniqueness: true

  has_many :sponsorships
  has_many :brands, through: :sponsorships
end
