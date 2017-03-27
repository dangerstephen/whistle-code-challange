Rails.application.routes.draw do

  resources :dogs do
    resource :schedule
    resources :meals
    resources :walks
  end


end
