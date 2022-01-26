Rails.application.routes.draw do
  devise_for :admins
  devise_for :customers
  scope module: :customer do
    resources :customers
    resources :tweets do
      resources :tweet_comments, only: [:create, :destroy]
      resource :favorites, only: [:create, :destroy]
  end
  end
end
