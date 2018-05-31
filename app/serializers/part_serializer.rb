class PartSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :sku, :quantity, :user_id
end
