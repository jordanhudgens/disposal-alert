Disposalalert::Application.routes.draw do
  resources :d_alerts

  root 'd_alerts#index'
end
