class User < ApplicationRecord
    has_secure_password
    validates :username, uniqueness: {case_sensitive: false}

    has_many :active_days
    has_many :activities, through: :active_days
    has_many :bikes, through: :activities
    has_many :runs, through: :activities
    has_many :skis, through: :activities
    has_many :hikes, through: :activities
    has_many :swims, through: :activities


end
