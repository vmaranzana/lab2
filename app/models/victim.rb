class Victim < ApplicationRecord
    validates :name, presence: true
    has_one :monster
end
