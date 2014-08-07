Disposalalert::Application.routes.draw do
  devise_for :users
  resources :d_alerts

  root :to => 'd_alerts#index'
end
