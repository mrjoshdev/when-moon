class Cryptocurrency < ApplicationRecord
  validates :name, presence: true
  validates :symbol, presence: true, length: { is: 3 }, format: { with: /\A[A-Z]+\Z/,
    message: "only allows capital letters" }
  validates :target_price, presence: true

  belongs_to :user
  has_many :favorites
end
