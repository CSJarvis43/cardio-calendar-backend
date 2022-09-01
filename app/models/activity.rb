class Activity < ApplicationRecord
    belongs_to :active_day
    has_many :bikes
    has_many :runs
    has_many :skis
    has_many :hikes
    has_many :swims
end
