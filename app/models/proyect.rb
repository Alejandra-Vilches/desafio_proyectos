class Proyect < ApplicationRecord
    validates :name, presence: true
    validates :description, presence: true
    validates :startdate, presence: true

    validates :state, presence: true
end
