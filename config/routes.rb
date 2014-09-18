Rails.application.routes.draw do

  root 'posts#index'

  resource :session, only: [:new, :create, :destroy]
  resources :users, only: [:new, :show, :create]
  resources :posts, only: [:index, :new, :create]

  scope '/api' do
    resources :posts, only: [:index, :destroy], defaults: { format: :json }
    get '/current_user_posts', to: 'posts#current_user_posts', defaults: { format: :json }
    get '/current_user_favorites', to: 'posts#current_user_favorites', defaults: { format: :json }
    resources :answers, only: [:index, :create], defaults: { format: :json }
    get '/current_user_answers', to: 'answers#current_user_answers', defaults: { format: :json }
    resources :favorites, only: [:show, :create, :destroy], defaults: { format: :json }
    resources :votes, only: [:create, :destroy], defaults: {format: :json }
  end

end
