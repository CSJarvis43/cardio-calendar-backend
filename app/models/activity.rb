class Activity < ApplicationRecord
    belongs_to :active_day
    # belongs_to :user, through: :active_day

end
