module Helpers::UserHelper
  def authenticate!
    error!('Unauthorized. Invalid or expired token.', 401) unless current_user
  end

  def current_user
    # find token. Check if valid.
    token = ApiKey.where(access_token: headers["Token"]).first
    if token && !token.expired?
      @current_user = User.find(token.user_id)
    else
      false
    end
  end
end
