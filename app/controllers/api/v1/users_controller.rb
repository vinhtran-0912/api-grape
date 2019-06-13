class V1::UsersController < ApplicationController
  skip_before_action :authenticate_request, only: :create
  def index
    render json: User.all
  end

  def create
    @user = User.new user_params
    if @user.save
      render json: @user, status: 201
    else
      render json: { errors: @user.errors }, status: 442
    end
  end

  private
  
  def user_params
    params.permit :name, :password, :password_confirmation
  end
end
