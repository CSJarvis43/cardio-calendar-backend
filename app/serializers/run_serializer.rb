class RunSerializer < ActiveModel::Serializer
  attributes :id, :activity_length, :calories, :distance, :streak, :rating, :summary, :activity_id
end
