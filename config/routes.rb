Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # root to: '/trainers'
  resources :trainers, only: %i[index show new create] do
    resources :athletes, to: 'trainer_athletes#index'
  end

  resources :athletes, only: %i[index show]

  # Defines the root path route ("/")
  # root "articles#index"
end
