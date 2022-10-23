class Monster < ApplicationRecord
    validates :name, presence: true, uniqueness: true
    has_many :victims
end