class Patient < ApplicationRecord
    belongs_to :city, optional: true

    has_many :appointments, dependent: :destroy
    has_many :doctors, through: :appointments
end
