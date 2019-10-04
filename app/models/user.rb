class User < ApplicationRecord
    has_many :rooms
    validates :name, presence: true
    validates :user_name, uniqueness: true
    has_secure_password
end
