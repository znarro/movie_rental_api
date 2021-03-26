class RentalSerializer < ActiveModel::Serializer
  attributes :id

  belongs_to :movie
end
