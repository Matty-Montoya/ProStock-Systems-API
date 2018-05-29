class PartSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :sku, :quantity, :collection_id
  has_one :collection
end
