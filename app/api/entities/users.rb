module  Entities
  class Users < Grape::Entity
<<<<<<< 06c6b66a7938feb4b5eea10c109e24625a8d1f40
    expose :id, :name, :gender, :email
    # expose :access_token, using: API::Entities::ApiKeys, as: :token
=======
      expose :id
      expose :name
      expose :email
      expose :gender
      expose :date_of_birth
>>>>>>> init serializer
  end
end
