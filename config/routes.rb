Rails.application.routes.draw do

  resources :dogs, only: [:create] do
    resource :schedule, only: [:show]
  end
end
