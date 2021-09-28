Rails.application.routes.draw do
  resources :appointments
  resources :doctor_locations
  resources :doctors
  resources :locations
  resources :patients
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
