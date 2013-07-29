Birchis::Application.routes.draw do
  get "privacy" => "site#privacy"
  get "terms" => "site#terms"

  # bitcoin payment route {offsite}

  get "payment_page" => "site#payment_page"
  
  get "browse" => "site#browse"
  get "geolocate" => "site#geolocate", as: :geo
  get "menu" => "site#menu"
  
  
  get "reset/:code" => "password#edit"
  patch "password" => "password#update", as: :password
  
  get "login" => "session#new"
  post "login" => "session#create"
  delete "logout" => "session#destroy"
  get "logout" => "session#destroy"

  
  resources :users
  
  root 'site#index'
end


