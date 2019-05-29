class V1 < Grape::API
  version 'v1', using: :path
  format :json
  helpers ::Helpers::UserHelper

  mount Users
end
