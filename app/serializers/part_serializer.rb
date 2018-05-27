class PartSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :sku, :quantity
  has_one :collection
end
