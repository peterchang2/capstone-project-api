
class FavoriteSerializer < ActiveModel::Serializer
  attributes :id
  attributes :user_score
  has_one :user
  has_one :whiskey
end
