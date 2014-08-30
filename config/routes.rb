Disposalalert::Application.routes.draw do


  resources :recurring_alerts
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  resources :d_alerts

  root :to => 'd_alerts#index'
end
