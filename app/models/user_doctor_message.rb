class UserDoctorMessage < ApplicationRecord
    belongs_to :user
    belongs_to :doctor
    belongs_to :message
end
