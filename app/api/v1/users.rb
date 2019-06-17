class V1::Users < Grape::API
  resource :users do

    desc "Creates and returns access_token if valid email"
    params do
      requires :email, type: String, desc: "Email"
      requires :password, type: String, desc: "Password"
    end

    post :login do
      if params[:email].include?("@")
        user = User.find_by_email(params[:email].downcase)
      else
        user = User.find_by_email(params[:email].downcase)
      end
  
      if user && user.authenticate(params[:password])
        key = ApiKey.find_or_create_by(user_id: user.id)
        key.renew_token
<<<<<<< 06c6b66a7938feb4b5eea10c109e24625a8d1f40
        userData = present user, with: API::Entities::Users
        return {token: key.access_token, user: userData}.as_json
        # present user, with: API::Entities::Users
=======
        response = {user: user, token: key.access_token}
        # return {token: key.access_token, user: userData}
        # present user, with: API::Entities::Users
        # binding.pry
        present response, with: API::Entities::Auth

>>>>>>> init serializer
      else
        error!('Unauthorized.', 401)
      end
    end
  
    desc "Returns pong if logged in correctly"
    params do
      requires :token, type: String, desc: "Access token."
    end
    post :ping do
      authenticate!
      { message: "pong" }
    end
  end
end
