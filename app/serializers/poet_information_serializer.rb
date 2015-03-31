class PoetInformationSerializer < ActiveModel::Serializer
  attributes :id, :poet_id, :pen_name, :place, :spouse, :father, :mother, :birth, :informations,:about
end
