class ApplicationController < ActionController::Base
  add_flash_types :danger, :info, :warning, :success
  
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
  
  def current_ability
    if current_user
      @current_ability ||= UserAbility.new(current_user)
    else
      @current_ability ||= ProviderAbility.new(current_provider)
    end
  end
  
  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_url, :alert => exception.message
  end


  protected
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:email, :username, :password, :password_confirmation, :firstname, :lastname, :name, :city, :state, :postcode, :minimum_persons, :cost_per_head, :dob, :uploaded_image, :cuisine_id, :remember_me) }
      devise_parameter_sanitizer.permit(:sign_in) { |u| u.permit(:email, :password, :remember_me) }
      devise_parameter_sanitizer.permit(:account_update) { |u| u.permit( :firstname, :lastname, :username, :dob, :email, :password, :password_confirmation, :uploaded_image, :current_password ) }
    end

 end