class ApplicationController < ActionController::Base
  include DeviseTokenAuth::Concerns::SetUserByToken
  
  protect_from_forgery with: :null_session
  #skip_before_action :verify_authenticity_token
  #before_action :authenticate_user!
  before_action :permitted_parameters, if: :devise_controller? 

  protected

  def permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :city, { images_attributes: [:name] }])
    devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name, :city])
  end

  
end
