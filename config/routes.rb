Rails.application.routes.draw do
  resources :comments
  resources :appointments
  resources :doctor_locations
  resources :doctors
  resources :locations
  resources :patients 

  #, only: [:show, :index]
  post "/signup", to: "patient#create"
  get "/me", to: "patient#show"
  post "/patientlogin", to: "sessions#createpatient"
  post "/doctorlogin", to: "sessions#createdoctor"
  delete "/logout", to: "sessions#destroy"


  resources :locations do
    resources :doctors, only: [:show, :index]
  end

  resources :doctors do
    resources :locations, only: [:show, :index]
    resources :patients, only: [:show, :index]
  end

  resources :patients do
    resources :doctors, only: [:show, :index]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
