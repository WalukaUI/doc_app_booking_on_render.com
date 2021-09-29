Rails.application.routes.draw do
  resources :comments
  resources :appointments
  resources :doctor_locations, only: [:show, :index]
  resources :doctors
  resources :locations
  resources :patients 

  post "/signup", to: "patient#create"
  get "/me", to: "patient#show"
  post "/patientlogin", to: "sessions#createpatient"
  post "/doctorlogin", to: "sessions#createdoctor"
  delete "/logout", to: "sessions#destroy"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
