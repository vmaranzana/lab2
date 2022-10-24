class Victim < ApplicationRecord
    validates :name, presence: true
    has_one :monster
    has_one :attack, dependent: :destroy
end
