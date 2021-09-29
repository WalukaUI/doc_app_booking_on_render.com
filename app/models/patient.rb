class Patient < ApplicationRecord
    has_many :appointments
    has_many :doctors, through: :appointments
    has_many :comment

    validates :last_name, uniqueness: true
    validates :last_name, presence: true 
    validates :first_name, presence: true 
end
