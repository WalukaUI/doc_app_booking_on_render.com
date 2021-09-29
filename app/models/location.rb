class Location < ApplicationRecord
    has_many :doctor_locations
    has_many :doctors, through: :doctor_locations
end
