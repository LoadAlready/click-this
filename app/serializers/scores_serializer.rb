class ScoresSerializer < ActiveModel::Serializer
  attributes :id, :point_value
  belongs_to :user
end
