class UsersSerializer
  include JSONAPI::Serializer
  attributes :id, :email, :role

end