class DeclarationSerializer < ActiveModel::Serializer
  attributes :id, :disaster_number, :state, :declaration_date, :disaster_type, :incident_type, :title
end
