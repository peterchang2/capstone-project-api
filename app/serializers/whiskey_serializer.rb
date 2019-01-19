class WhiskeySerializer < ActiveModel::Serializer
  attributes :id, :name, :meta_critic, :cost, :whiskey_class, :country, :whiskey_type
end
