class RegistrationsController < Devise::RegistrationsController
    before_action :configure_permitted_parameters
  
    private
  
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:email, :password, :password_confirmation, :role])
    end

  
  end