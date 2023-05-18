
class TutorSerializer
  include JSONAPI::Serializer
  has_many :reservations
  attributes :id, :name, :image_url, :experience, :description, :price, :subject, :lang
end
