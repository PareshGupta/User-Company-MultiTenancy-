class BaseController < ApplicationController

  before_action :authenticate_user!

  # def current_user
  #   @current_user || User.find(session[:user_id]) if session[:user_id]
  # end
  # helper_method :current_user

  # def current_company
  #   Company.find_by_subdomain! request.subdomain
  # end
  # helper_method :current_company

end
