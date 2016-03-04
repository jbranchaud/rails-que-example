Rails.application.routes.draw do
  resources :orders, only: [:index,:new,:create]
  root to: 'orders#index'
end
