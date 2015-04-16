class ApplicationController < ActionController::Base

  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  def after_sign_in_path_for(resource)
    if resource.is_a? AdminUser 
      admin_admin_users_path
    else
      users_path
    end
  end

  private

    def configure_permitted_parameters
      devise_parameter_sanitizer.for(:accept_invitation) do |u|
        u.permit(:name, :password, :password_confirmation, :invitation_token)
      end
    end

end
