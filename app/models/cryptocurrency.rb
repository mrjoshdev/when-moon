class Cryptocurrency < ApplicationRecord
  validates :name, presence: true
  validates :symbol, presence: true, length: { is: 3 }, format: { with: /\A[A-Z]+\Z/,
    message: "only allows capital letters" }
  validates :target_price, presence: true, numericality: { greater_than_or_equal_to: 1 }

  belongs_to :user
end
