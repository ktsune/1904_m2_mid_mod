Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # resources :authors, only: :show
  resources :books, only: :index

  get '/authors/:id', to: 'authors#show'
end
