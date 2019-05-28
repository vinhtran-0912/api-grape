class ApplicationController < ActionController::API
  before_action :authenticate_request
  attr_reader :current_user

  private

  def authenticate_request
    @current_user = AuthorizeApiRequest.new(request.headers).call.result
    render json: { error: 'Not Authorized' }, status: 401 unless @current_user
  end
end
