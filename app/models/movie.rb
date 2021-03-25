class Movie < ApplicationRecord
  # Associations
  belongs_to :category
  has_many :rentals
  has_many :users, through: :rentals

  # Validations
  validates :name, presence: true, uniqueness: true
  validates :director, presence: true, uniqueness: true
end
