class ChecklistSerializer < ActiveModel::Serializer
  attributes :id, :name

  belongs_to :category
end
