class ApplicationController < ActionController::API
  # protect_from_forgery with: :exception
  # include ActionController::Cookies
  # after_action :cors_set_access_control_headers

  # def current_user
  #   return nil if cookies[:jwt].nil? || cookies[:jwt].empty?
  #   token = Tokenize.decode(cookies[:jwt])
  #   User.try(:find_by, {id: token.first['sub']['id']})
  # end

  def logged_in?
    !!current_user
  end

  # def cors_set_access_control_headers
  #   headers['Access-Control-Allow-Origin'] = '*'
  #   headers['Access-Control-Allow-Methods'] = 'POST, GET, OPTIONS'
  #   headers['Access-Control-Allow-Headers'] = '*'
  # end

  # add 'before_action :authorize' to controllers
  # def authorize
  #   render json: {error: "Please Login", message: "Login or Create an Account"}, status: 403 if !logged_in?
  # end
end
