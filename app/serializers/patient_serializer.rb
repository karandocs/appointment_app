class PatientSerializer < ActiveModel::Serializer
  attributes :id, :phone_number, :name
end
