class V1::Posts < Grape::API
  version 'v1'
  format :json

  resource :posts do
    desc "Return list of recent posts"
    get do
      "test Post"
    end
  end
end
