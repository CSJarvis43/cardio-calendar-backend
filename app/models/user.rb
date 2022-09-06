class User < ApplicationRecord
    has_secure_password
    validates :username, uniqueness: {case_sensitive: false}

    has_many :active_days
    has_many :activities, through: :active_days


end
