class AppointmentSerializer < ActiveModel::Serializer
  attributes :id, :doctor, :patient, :diseases
end
