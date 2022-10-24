class Tweet < ApplicationRecord
    validates :despcripcion, presence: true
    belongs_to :monster
end
