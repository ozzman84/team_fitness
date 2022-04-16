Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  resources :trainers, only: [:index, :show] do
    resources :athletes, to: 'trainer_athletes#index'
  end

  resources :athletes, only: [:index, :show]

  # Defines the root path route ("/")
  # root "articles#index"
end
