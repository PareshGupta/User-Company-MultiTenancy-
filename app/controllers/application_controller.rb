class ApplicationController < ActionController::Base

  protect_from_forgery with: :exception

  def after_sign_in_path_for(resource)
    if resource.is_a? AdminUser 
      admin_admin_users_path
    else
      users_path
    end
  end

end
