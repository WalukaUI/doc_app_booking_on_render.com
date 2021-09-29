class Location < ApplicationRecord
    has_many :doctor_locations
    has_many :doctors, through: :doctor_locations

    validates :name, uniqueness: true
    validates :name, presence: true 
    validates :longitude, uniqueness: true
    validates :longitude, presence: true 
    validates :latitude, uniqueness: true
    validates :latitude, presence: true  
    
end
