class PartSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :sku, :quantity
  has_one :user
end
