Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  devise_scope :user do
    get 'players', to: 'users/registrations#new_player'
    post 'players', to: 'users/registrations#create_player'
  end
  root to: "tools#index"

  get '/tools/searchtool',  to: 'tools#search_tool'
  resources :tools do
    get 'search'
    resources :comments, only: :create
    resource :favorites, only: [:create, :destroy]
  end

  resources :users, only: :show 

end
