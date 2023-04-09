Rails.application.routes.draw do
  resources :specializations
  resources :patient_cards
  resources :patients
  resources :departments
  resources :doctors
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
