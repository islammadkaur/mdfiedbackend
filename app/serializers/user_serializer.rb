class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :email

  has_many :categories
  
  has_many :checklists, through: :categories
end
