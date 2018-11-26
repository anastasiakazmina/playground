Rails.application.routes.draw do
  resources :navbars
  resources :landings
  resources :visa_applications
  resources :visas
  resources :answers
  resources :questions
  resources :personal_informations
  resources :documents
  resources :countries
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
