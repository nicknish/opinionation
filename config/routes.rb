Rails.application.routes.draw do

  resource :session, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create]
  resources :posts, only: [:index, :new, :create]

  scope '/api' do
    resources :posts, only: [:index], defaults: { format: :json }
    resources :answers, only: [:new, :create], defaults: { format: :json }
  end

end
