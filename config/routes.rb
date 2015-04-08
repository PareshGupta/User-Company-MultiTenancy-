Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  devise_scope :admin_user do
    root 'active_admin/devise/sessions#new'
  end

end
