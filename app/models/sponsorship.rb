class Sponsorship < ApplicationRecord
  belongs_to :player
  belongs_to :brand

  validates :player, uniqueness: { scope: :brand }
end
