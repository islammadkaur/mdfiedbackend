class Checklist < ApplicationRecord
    belongs_to :category

    validates :name, presence: true, length: { minimum: 1 }
end
