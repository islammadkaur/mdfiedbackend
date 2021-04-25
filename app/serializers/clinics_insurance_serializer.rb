class ClinicsInsuranceSerializer < ActiveModel::Serializer
  attributes :id, :insurance
  belongs_to :clinic
    belongs_to :insurance
end
