class WishSerializer < ActiveModel::Serializer
  attributes :id
  has_one :user
  has_one :whiskey
end
