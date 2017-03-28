Rails.application.routes.draw do

  resources :interact

  resources :dogs do
    resource :schedule
    resources :meals
    resources :walks
  end


end
