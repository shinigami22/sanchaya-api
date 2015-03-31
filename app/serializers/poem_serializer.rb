class PoemSerializer < ActiveModel::Serializer
  attributes  :id, :name, :poem, :poet_id
end
