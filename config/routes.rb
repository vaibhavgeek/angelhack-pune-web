Rails.application.routes.draw do
  resources :complaints
  resources :labels
  resources :ngos
  root "complaints#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
