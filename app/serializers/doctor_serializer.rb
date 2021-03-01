class DoctorSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :date_of_birth, :email, :address, :gender, :timeslot, :specialty_id
end
