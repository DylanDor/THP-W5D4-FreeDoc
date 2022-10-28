class Doctor < ApplicationRecord
    has_many :appointments, dependent: :destroy
    has_many :patients, through: :appointments
    belongs_to :city
    has_many :join_doctor_to_specialities, dependent: :destroy
    has_many :specialities, through: :join_doctor_to_specialities
end
