Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  devise_scope :user do
    get 'players', to: 'users/registrations#new_player'
    post 'players', to: 'users/registrations#create_player'
    put 'players', to: 'users/registrations#edit_player'
    put 'players', to: 'users/registrations#update_player'
  end
  root to: "tools#index"

  resources :tools do
    resources :comments, only: :create
  end

  resources :users, only: :show

  get 'tools/search'
end
