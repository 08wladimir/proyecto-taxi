Rails.application.routes.draw do

  resources :coupons
  resources :references_vehicle_drivers
  resources :vehicle_per_usuarios
  resources :drivers
  resources :vehicule_per_users
  resources :vehicules
  resources :driverprofiles
  get 'payments/create'

  get 'landing/index'
  get 'welcome/home'
  get 'welcome/services'
  get 'welcome/contact'
  get 'welcome/aboutus'
  get 'welcome/controlpanel'
  get 'profile/index'
  
  root 'welcome#home'
  
  post "/pagar", to: "payments#create"
  get 'payments/index'
  post 'payments/create'
  

  devise_for :usuarios, controllers: {sessions: "sessions", registrations: "registrations"}
  
  resources :user
end
