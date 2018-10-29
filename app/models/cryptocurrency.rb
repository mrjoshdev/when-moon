class Cryptocurrency < ApplicationRecord
  validates :name, presence: true
  validates :current_price, presence: true
  validates :photo, presence: true

  belongs_to :user 
  has_many :reviews
end
