class ClinicsInsurance < ApplicationRecord
    belongs_to :clinic
    belongs_to :insurance
end
