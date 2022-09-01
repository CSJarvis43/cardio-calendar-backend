class ActiveDaySerializer < ActiveModel::Serializer
  attributes :id, :date, :day_of_week, :streak, :user_id
end
