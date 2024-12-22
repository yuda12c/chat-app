class ApplicationController < ActionController::Base
  before_action :authenticate_user!
<<<<<<< Updated upstream
   before_action :configure_permitted_parameters, if: :devise_controller?
=======
  before_action :configure_permitted_parameters, if: :devise_controller?
>>>>>>> Stashed changes

  private
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end
end
