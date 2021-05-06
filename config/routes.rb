Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  
  resources :stories do
    member do
      post :clap
    end
    resources :comments, only: [:create]
  end

  # /@user_id/文章標題-123
  get '@:username/:story_id', to: 'pages#show', as:'story_page'# <-路徑名

  # /@user_id/
  get '@:username/:story_id', to: 'pages#user', as:'user_page'

  
  root 'pages#index'
end
