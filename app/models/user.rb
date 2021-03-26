class User < ApplicationRecord
  # Associations
  has_many :movies

  # Validations
  validates :name, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true, format: {
    with: /\w+@\w+\.{1}[a-zA-Z]{2,}/,
    message: 'Only allows email format'
  }
end
