class Rental < ApplicationRecord
  # Associations
  belongs_to :user
  belongs_to :movie
end
