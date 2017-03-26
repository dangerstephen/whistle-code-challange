Rails.application.routes.draw do

  resources :dogs do
    resources :meals
    resources :walks
  end

end
