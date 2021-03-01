class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :date_of_birth, :email, :address, :city, :state, :zipcode
  has_many :accounts
  # has_many :transactions, through: :accounts
  # has_many :budgets
  # has_many :goals
  # has_many :bills

end
