Rails.application.routes.draw do

  root 'posts#index'

  resource :session, only: [:new, :create, :destroy]
  resources :users, only: [:new, :show, :update, :create]
  resources :posts, only: [:index, :show, :new, :create]
  get '/user_preferences/:id', to: 'users#edit'
  resources :tags, only: [:show]

  scope '/api' do
    resources :posts, only: [:index, :show], defaults: { format: :json }
    resources :tags, only: [:show], defaults: { format: :json }
    resources :users, only: [:show], defaults: { format: :json }
    get '/user_posts/:id', to: 'posts#user_posts', defaults: { format: :json }
    get '/user_favorites/:id', to: 'posts#user_favorites', defaults: { format: :json }

    resources :answers, only: [:index, :create], defaults: { format: :json }
    get '/user_answers/:id', to: 'answers#user_answers', defaults: { format: :json }
    resources :favorites, only: [:show, :create, :destroy], defaults: { format: :json }
    resources :votes, only: [:create, :destroy], defaults: {format: :json }
  end

end
