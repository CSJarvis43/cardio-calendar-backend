class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :location, :name
end
