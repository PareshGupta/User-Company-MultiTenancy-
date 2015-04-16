Rails.application.routes.draw do
  devise_for :users
  devise_for :admin_users, ActiveAdmin::Devise.config

  resources :users

  ActiveAdmin.routes(self)

  devise_scope :user do
    root 'devise/sessions#new'
  end

end
