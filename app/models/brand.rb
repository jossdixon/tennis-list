class Brand < ApplicationRecord
  has_many :sponsorships, dependent: :destroy
  has_many :players, through: :sponsorships
  has_one_attached :photo

  validates :name, presence: true, uniqueness: true
end
