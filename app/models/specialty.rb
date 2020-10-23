class Specialty < ApplicationRecord
    has_many :joinspedocs, dependent: :destroy
    has_many :doctors, through: :joinspedocs
end
