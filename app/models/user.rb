class User < ApplicationRecord
  validates :first_name, presence: true
  validates :last_name, presence: true

  has_many :cryptocurrencies
  has_many :price_goals
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
