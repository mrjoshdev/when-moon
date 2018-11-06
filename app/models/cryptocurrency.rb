class Cryptocurrency < ApplicationRecord
  validates :name, presence: true
  validates :symbol, presence: true
  validates :target_price, presence: true

  belongs_to :user
  has_many :favorites
end
