class ActiveDay < ApplicationRecord
    belongs_to :user
    has_many :activities
    has_many :bikes, through: :activities
    has_many :runs, through: :activities
    has_many :skis, through: :activities
    has_many :hikes, through: :activities
    has_many :swims, through: :activities
end
