Rails.application.routes.draw do
  devise_for :admins
  devise_for :customers
  scope module: :customer do
    resources :customers
    resources :tweets
  end
end
