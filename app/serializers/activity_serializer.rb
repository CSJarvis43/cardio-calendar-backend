class ActivitySerializer < ActiveModel::Serializer
  attributes :id, :active_day_id, :exercise_type, :activity_length, :calories, :distance, :streak, :rating, :summary
end
