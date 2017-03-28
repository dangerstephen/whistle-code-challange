Rails.application.routes.draw do

    root 'interact#index'
    get "/routes" =>"routes#index", as: "routes"

    resources :interact, only: [:index]

    resources :dogs do
        resource :schedule, only: [:show]
        resources :meals, only: [:index, :create]
        resources :walks, only: [:index, :create]
    end

    get '*path' => redirect('/')

end
