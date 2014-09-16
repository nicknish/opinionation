Rails.application.routes.draw do

  root 'posts#index'

  resource :session, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create]
  resources :posts, only: [:index, :new, :create]

  scope '/api' do
    resources :posts, only: [:index, :destroy], defaults: { format: :json }
    resources :answers, only: [:create], defaults: { format: :json }
    resources :favorites, only: [:show, :create, :destroy], defaults: {format: :json }
    resources :votes, only: [:create, :destroy], defaults: {format: :json }
  end

end
