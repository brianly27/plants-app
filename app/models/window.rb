class Window < ApplicationRecord
    belongs_to :room 
    has_many :plants_windows
    has_many :plants, through: :plants_windows
end
