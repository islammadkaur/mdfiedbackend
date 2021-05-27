class User < ApplicationRecord
    has_secure_password
    has_many :categories
    has_many :checklists, through: :categories

    PASSWORD_FORMAT = /\A
  (?=.{8,})          # Must contain 8 or more characters
  (?=.*\d)           # Must contain a digit
  (?=.*[a-z])        # Must contain a lower case character
  (?=.*[A-Z])        # Must contain an upper case character
  (?=.*[[:^alnum:]]) # Must contain a symbol
/x


    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :password, presence: true, format: { with: PASSWORD_FORMAT}
    validates :email, uniqueness: true
end
