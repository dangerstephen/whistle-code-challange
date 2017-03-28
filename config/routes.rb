Rails.application.routes.draw do

  get 'routes/index'

  root 'interact#index'
  get "/routes" =>"routes#index", as: "routes"


  resources :interact

  resources :dogs do
    resource :schedule
    resources :meals
    resources :walks
  end


end
