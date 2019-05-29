class V1::SessionsController < ApplicationController
  skip_before_action :authenticate_request, only: :login

  def login
    authenticate params[:name], params[:password] 
  end

  private
  
  def authenticate(name, password)
    command = AuthenticateUser.new(name, password).call
    if command
      render json: {
        data: loadUser(name),
        access_token: command.result
      }
    else
    end
  end

  def loadUser name
    @user = User.find_by! name: name
  end
end
