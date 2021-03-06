class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :configure_permitted_parameters, if: :devise_controller?
  
  
  protected

  def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:firstName, :lastName, :rol, :email, :password, :password_confirmation])
      devise_parameter_sanitizer.permit(:account_update, keys: [:email, :password, :password_confirmation, :current_password, :firstName, :lastName, :rol, :pictureProfile, :birthdayDate, :identityCard, :cellphone, :language, :paymentOption, :expirateMM, :expirateYY, :cvCode, :cuponCode ])
  end
  
end
