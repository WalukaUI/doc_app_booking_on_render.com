class Patient < ApplicationRecord
    has_many :appointments
    has_many :doctors, through: :appointments
    has_many :comment

    validates :username, presence: true, uniqueness: true
    validates :username, length: { in: 3..20 }
    validates :password_digest, presence: true
    validates :password_digest, length: { in: 3..20 }
    validates :last_name, presence: true, uniqueness: true 
    validates :first_name, presence: true 
end
