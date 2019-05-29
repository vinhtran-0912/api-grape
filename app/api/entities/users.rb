module  Entities
  class Users < Grape::Entity
    expose :id, :name, :gender, :email
    # expose :access_token, using: API::Entities::ApiKeys, as: :token
  end
end
