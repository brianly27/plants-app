class Plant < ApplicationRecord
    has_many :plants_windows
    has_many :windows, through: :plants_windows
end
