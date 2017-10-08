Rails.application.routes.draw do
  root 'manufacturers#index'
  resources :manufacturers
  resources :cars
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
