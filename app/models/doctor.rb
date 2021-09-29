class Doctor < ApplicationRecord
    has_many :doctor_locations
    has_many :locations, through: :doctor_locations

    has_many :appointments
    has_many :patients, through: :appointments

    has_many :comment
end
