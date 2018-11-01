class Cryptocurrency < ApplicationRecord
  validates :name, presence: true
  validates :symbol, presence: true

  belongs_to :user
  has_many :favorites
end
