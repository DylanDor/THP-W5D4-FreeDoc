class JoinDoctorToSpeciality < ApplicationRecord
    belongs_to :doctor
    belongs_to :speciality
end
