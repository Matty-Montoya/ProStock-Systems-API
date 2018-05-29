# frozen_string_literal: true

class CollectionSerializer < ActiveModel::Serializer
  attributes :id, :collection_name
  has_many :parts
end
