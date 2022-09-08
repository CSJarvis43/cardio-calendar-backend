class ActiveDay < ApplicationRecord
    belongs_to :user
    has_many :activities
    validates :date, uniqueness: { scope: :user_id}
end
