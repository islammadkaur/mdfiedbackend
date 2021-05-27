class Category < ApplicationRecord
    belongs_to :user
    has_many :checklists
    validates :name, presence: true
    validates :user_id, presence: true
end
