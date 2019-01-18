class WhiskeySerializer < ActiveModel::Serializer
  attributes :id, :name, :meta_critic, :cost, :class, :country, :type
end
