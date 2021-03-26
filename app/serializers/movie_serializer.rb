class MovieSerializer < ActiveModel::Serializer
  attributes :id, :name, :director, :release_date

  belongs_to :category
end
