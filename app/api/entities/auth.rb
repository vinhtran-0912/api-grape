module  Entities
  class Auth < Grape::Entity
    expose :token
    expose :user, using: Users
  end
end
