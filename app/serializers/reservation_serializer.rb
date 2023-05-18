class ReservationSerializer
  include JSONAPI::Serializer
  attributes :id, :city, :reservation_date, :returning_date
  belongs_to :tutor
end

