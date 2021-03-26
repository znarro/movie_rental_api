class Movie < ApplicationRecord
  # Associations
  belongs_to :category
  belongs_to :user, optional: true

  # Validations
  validates :name, presence: true, uniqueness: true
  validates :director, presence: true, uniqueness: true
end
