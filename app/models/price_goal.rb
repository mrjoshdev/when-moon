class PriceGoal < ApplicationRecord
  validates :target_price, numericality: { greater_than: 0 }

  belongs_to :cryptocurrency
  belongs_to :user
end
